#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct sky2_port {size_t rx_next; size_t port; TYPE_4__* hw; TYPE_3__* netdev; TYPE_1__* rx_ring; } ;
struct sk_buff {int /*<<< orphan*/  csum; int /*<<< orphan*/  ip_summed; } ;
struct TYPE_8__ {int flags; TYPE_2__* pdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  features; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMU_DIS_RX_CHKSUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CHECKSUM_COMPLETE ; 
 int /*<<< orphan*/  NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_CSR ; 
 int SKY2_HW_NEW_LE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/ * rxqaddr ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sky2_port *sky2, u32 status)
{
	/* If this happens then driver assuming wrong format for chip type */
	FUNC0(sky2->hw->flags & SKY2_HW_NEW_LE);

	/* Both checksum counters are programmed to start at
	 * the same offset, so unless there is a problem they
	 * should match. This failure is an early indication that
	 * hardware receive checksumming won't work.
	 */
	if (FUNC4((u16)(status >> 16) == (u16)status)) {
		struct sk_buff *skb = sky2->rx_ring[sky2->rx_next].skb;
		skb->ip_summed = CHECKSUM_COMPLETE;
		skb->csum = FUNC3(status);
	} else {
		FUNC2(&sky2->hw->pdev->dev,
			   "%s: receive checksum problem (status = %#x)\n",
			   sky2->netdev->name, status);

		/* Disable checksum offload
		 * It will be reenabled on next ndo_set_features, but if it's
		 * really broken, will get disabled again
		 */
		sky2->netdev->features &= ~NETIF_F_RXCSUM;
		FUNC5(sky2->hw, FUNC1(rxqaddr[sky2->port], Q_CSR),
			     BMU_DIS_RX_CHKSUM);
	}
}