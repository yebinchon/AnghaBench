#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  data; } ;
struct rfd {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  phy_id; } ;
struct nic {int flags; int loopback; TYPE_3__ mii; int /*<<< orphan*/  netdev; TYPE_2__* rx_to_clean; int /*<<< orphan*/  pdev; } ;
typedef  enum loopback { ____Placeholder_loopback } loopback ;
struct TYPE_5__ {TYPE_1__* skb; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_LOOPBACK ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_DATA_LEN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  RFD_BUF_LEN ; 
 int FUNC0 (struct nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct nic*) ; 
 int FUNC2 (struct nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct nic*) ; 
 int FUNC4 (struct nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int ich ; 
 int lb_mac ; 
 int lb_none ; 
 int lb_phy ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct nic *nic, enum loopback loopback_mode)
{
	int err;
	struct sk_buff *skb;

	/* Use driver resources to perform internal MAC or PHY
	 * loopback test.  A single packet is prepared and transmitted
	 * in loopback mode, and the test passes if the received
	 * packet compares byte-for-byte to the transmitted packet. */

	if ((err = FUNC4(nic)))
		return err;
	if ((err = FUNC0(nic)))
		goto err_clean_rx;

	/* ICH PHY loopback is broken so do MAC loopback instead */
	if (nic->flags & ich && loopback_mode == lb_phy)
		loopback_mode = lb_mac;

	nic->loopback = loopback_mode;
	if ((err = FUNC2(nic)))
		goto err_loopback_none;

	if (loopback_mode == lb_phy)
		FUNC8(nic->netdev, nic->mii.phy_id, MII_BMCR,
			BMCR_LOOPBACK);

	FUNC6(nic, NULL);

	if (!(skb = FUNC12(nic->netdev, ETH_DATA_LEN))) {
		err = -ENOMEM;
		goto err_loopback_none;
	}
	FUNC14(skb, ETH_DATA_LEN);
	FUNC10(skb->data, 0xFF, ETH_DATA_LEN);
	FUNC7(skb, nic->netdev);

	FUNC11(10);

	FUNC13(nic->pdev, nic->rx_to_clean->dma_addr,
			RFD_BUF_LEN, PCI_DMA_BIDIRECTIONAL);

	if (FUNC9(nic->rx_to_clean->skb->data + sizeof(struct rfd),
	   skb->data, ETH_DATA_LEN))
		err = -EAGAIN;

err_loopback_none:
	FUNC8(nic->netdev, nic->mii.phy_id, MII_BMCR, 0);
	nic->loopback = lb_none;
	FUNC1(nic);
	FUNC3(nic);
err_clean_rx:
	FUNC5(nic);
	return err;
}