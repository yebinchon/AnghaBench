#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {unsigned long rx_align; TYPE_1__* pdev; } ;
struct bufdesc {int /*<<< orphan*/  cbd_bufaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 scalar_t__ FEC_ENET_RX_FRSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct fec_enet_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static int
FUNC8(struct net_device *ndev, struct bufdesc *bdp, struct sk_buff *skb)
{
	struct  fec_enet_private *fep = FUNC6(ndev);
	int off;

	off = ((unsigned long)skb->data) & fep->rx_align;
	if (off)
		FUNC7(skb, fep->rx_align + 1 - off);

	bdp->cbd_bufaddr = FUNC0(FUNC1(&fep->pdev->dev, skb->data, FEC_ENET_RX_FRSIZE - fep->rx_align, DMA_FROM_DEVICE));
	if (FUNC2(&fep->pdev->dev, FUNC3(bdp->cbd_bufaddr))) {
		if (FUNC4())
			FUNC5(ndev, "Rx DMA memory map failed\n");
		return -ENOMEM;
	}

	return 0;
}