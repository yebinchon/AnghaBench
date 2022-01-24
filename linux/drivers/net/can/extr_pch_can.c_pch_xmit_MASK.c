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
struct sk_buff {scalar_t__ data; } ;
struct pch_can_priv {int tx_obj; TYPE_2__* regs; } ;
struct net_device {int dummy; } ;
struct can_frame {int can_id; int can_dlc; int* data; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {TYPE_1__* ifregs; int /*<<< orphan*/  treq2; } ;
struct TYPE_3__ {int /*<<< orphan*/  creq; int /*<<< orphan*/  mcont; int /*<<< orphan*/ * data; int /*<<< orphan*/  id2; int /*<<< orphan*/  id1; int /*<<< orphan*/  cmask; } ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int CAN_RTR_FLAG ; 
 int CAN_SFF_MASK ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  PCH_CMASK_ALL ; 
 int PCH_ID2_DIR ; 
 int PCH_ID2_XTD ; 
 int PCH_ID_MSGVAL ; 
 int PCH_IF_MCONT_NEWDAT ; 
 int PCH_IF_MCONT_TXIE ; 
 int PCH_IF_MCONT_TXRQXT ; 
 int PCH_RX_OBJ_END ; 
 int PCH_TREQ2_TX_MASK ; 
 int PCH_TX_OBJ_END ; 
 int PCH_TX_OBJ_START ; 
 scalar_t__ FUNC0 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 struct pch_can_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static netdev_tx_t FUNC9(struct sk_buff *skb, struct net_device *ndev)
{
	struct pch_can_priv *priv = FUNC5(ndev);
	struct can_frame *cf = (struct can_frame *)skb->data;
	int tx_obj_no;
	int i;
	u32 id2;

	if (FUNC0(ndev, skb))
		return NETDEV_TX_OK;

	tx_obj_no = priv->tx_obj;
	if (priv->tx_obj == PCH_TX_OBJ_END) {
		if (FUNC2(&priv->regs->treq2) & PCH_TREQ2_TX_MASK)
			FUNC6(ndev);

		priv->tx_obj = PCH_TX_OBJ_START;
	} else {
		priv->tx_obj++;
	}

	/* Setting the CMASK register. */
	FUNC7(&priv->regs->ifregs[1].cmask, PCH_CMASK_ALL);

	/* If ID extended is set. */
	if (cf->can_id & CAN_EFF_FLAG) {
		FUNC4(cf->can_id & 0xffff, &priv->regs->ifregs[1].id1);
		id2 = ((cf->can_id >> 16) & 0x1fff) | PCH_ID2_XTD;
	} else {
		FUNC4(0, &priv->regs->ifregs[1].id1);
		id2 = (cf->can_id & CAN_SFF_MASK) << 2;
	}

	id2 |= PCH_ID_MSGVAL;

	/* If remote frame has to be transmitted.. */
	if (!(cf->can_id & CAN_RTR_FLAG))
		id2 |= PCH_ID2_DIR;

	FUNC4(id2, &priv->regs->ifregs[1].id2);

	/* Copy data to register */
	for (i = 0; i < cf->can_dlc; i += 2) {
		FUNC3(cf->data[i] | (cf->data[i + 1] << 8),
			  &priv->regs->ifregs[1].data[i / 2]);
	}

	FUNC1(skb, ndev, tx_obj_no - PCH_RX_OBJ_END - 1);

	/* Set the size of the data. Update if2_mcont */
	FUNC4(cf->can_dlc | PCH_IF_MCONT_NEWDAT | PCH_IF_MCONT_TXRQXT |
		  PCH_IF_MCONT_TXIE, &priv->regs->ifregs[1].mcont);

	FUNC8(&priv->regs->ifregs[1].creq, tx_obj_no);

	return NETDEV_TX_OK;
}