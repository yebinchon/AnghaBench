#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tx_sa {int dummy; } ;
struct rx_sa {int dummy; } ;
struct rx_ip_sa {int dummy; } ;
struct ixgbe_ipsec {struct ixgbe_ipsec* tx_tbl; struct ixgbe_ipsec* rx_tbl; struct ixgbe_ipsec* ip_tbl; scalar_t__ num_tx_sa; scalar_t__ num_rx_sa; int /*<<< orphan*/  rx_sa_list; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_2__* netdev; struct ixgbe_ipsec* ipsec; struct ixgbe_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/ * xfrmdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IXGBE_IPSEC_MAX_RX_IP_COUNT ; 
 int IXGBE_IPSEC_MAX_SA_COUNT ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SECRXSTAT ; 
 int IXGBE_SECRXSTAT_SECRX_OFF_DIS ; 
 int /*<<< orphan*/  IXGBE_SECTXSTAT ; 
 int IXGBE_SECTXSTAT_SECTX_OFF_DIS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 int /*<<< orphan*/  ixgbe_xfrmdev_ops ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_ipsec*) ; 
 void* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 

void FUNC7(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	struct ixgbe_ipsec *ipsec;
	u32 t_dis, r_dis;
	size_t size;

	if (hw->mac.type == ixgbe_mac_82598EB)
		return;

	/* If there is no support for either Tx or Rx offload
	 * we should not be advertising support for IPsec.
	 */
	t_dis = FUNC0(hw, IXGBE_SECTXSTAT) &
		IXGBE_SECTXSTAT_SECTX_OFF_DIS;
	r_dis = FUNC0(hw, IXGBE_SECRXSTAT) &
		IXGBE_SECRXSTAT_SECRX_OFF_DIS;
	if (t_dis || r_dis)
		return;

	ipsec = FUNC5(sizeof(*ipsec), GFP_KERNEL);
	if (!ipsec)
		goto err1;
	FUNC1(ipsec->rx_sa_list);

	size = sizeof(struct rx_sa) * IXGBE_IPSEC_MAX_SA_COUNT;
	ipsec->rx_tbl = FUNC5(size, GFP_KERNEL);
	if (!ipsec->rx_tbl)
		goto err2;

	size = sizeof(struct tx_sa) * IXGBE_IPSEC_MAX_SA_COUNT;
	ipsec->tx_tbl = FUNC5(size, GFP_KERNEL);
	if (!ipsec->tx_tbl)
		goto err2;

	size = sizeof(struct rx_ip_sa) * IXGBE_IPSEC_MAX_RX_IP_COUNT;
	ipsec->ip_tbl = FUNC5(size, GFP_KERNEL);
	if (!ipsec->ip_tbl)
		goto err2;

	ipsec->num_rx_sa = 0;
	ipsec->num_tx_sa = 0;

	adapter->ipsec = ipsec;
	FUNC3(adapter);
	FUNC2(adapter);

	adapter->netdev->xfrmdev_ops = &ixgbe_xfrmdev_ops;

	return;

err2:
	FUNC4(ipsec->ip_tbl);
	FUNC4(ipsec->rx_tbl);
	FUNC4(ipsec->tx_tbl);
	FUNC4(ipsec);
err1:
	FUNC6(adapter->netdev, "Unable to allocate memory for SA tables");
}