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
typedef  scalar_t__ u32 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {scalar_t__ rx_copybreak; scalar_t__ rx_align; TYPE_1__* pdev; } ;
struct bufdesc {int /*<<< orphan*/  cbd_bufaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ FEC_ENET_RX_FRSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC3 (struct net_device*,scalar_t__) ; 
 struct fec_enet_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool FUNC6(struct net_device *ndev, struct sk_buff **skb,
			       struct bufdesc *bdp, u32 length, bool swap)
{
	struct  fec_enet_private *fep = FUNC4(ndev);
	struct sk_buff *new_skb;

	if (length > fep->rx_copybreak)
		return false;

	new_skb = FUNC3(ndev, length);
	if (!new_skb)
		return false;

	FUNC0(&fep->pdev->dev,
				FUNC1(bdp->cbd_bufaddr),
				FEC_ENET_RX_FRSIZE - fep->rx_align,
				DMA_FROM_DEVICE);
	if (!swap)
		FUNC2(new_skb->data, (*skb)->data, length);
	else
		FUNC5(new_skb->data, (*skb)->data, length);
	*skb = new_skb;

	return true;
}