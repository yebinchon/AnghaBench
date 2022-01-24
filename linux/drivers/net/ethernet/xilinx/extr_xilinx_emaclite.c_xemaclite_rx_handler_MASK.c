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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct net_local {TYPE_1__* ndev; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ALIGNMENT ; 
 unsigned int FUNC0 (scalar_t__) ; 
 scalar_t__ ETH_FCS_LEN ; 
 scalar_t__ ETH_FRAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC4 (struct net_device*,scalar_t__) ; 
 struct net_local* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (struct net_local*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct net_device *dev)
{
	struct net_local *lp = FUNC5(dev);
	struct sk_buff *skb;
	unsigned int align;
	u32 len;

	len = ETH_FRAME_LEN + ETH_FCS_LEN;
	skb = FUNC4(dev, len + ALIGNMENT);
	if (!skb) {
		/* Couldn't get memory. */
		dev->stats.rx_dropped++;
		FUNC1(&lp->ndev->dev, "Could not allocate receive buffer\n");
		return;
	}

	/* A new skb should have the data halfword aligned, but this code is
	 * here just in case that isn't true. Calculate how many
	 * bytes we should reserve to get the data to start on a word
	 * boundary
	 */
	align = FUNC0(skb->data);
	if (align)
		FUNC10(skb, align);

	FUNC10(skb, 2);

	len = FUNC11(lp, (u8 *)skb->data, len);

	if (!len) {
		dev->stats.rx_errors++;
		FUNC2(skb);
		return;
	}

	FUNC9(skb, len);	/* Tell the skb how much data we got */

	skb->protocol = FUNC3(skb, dev);
	FUNC7(skb);

	dev->stats.rx_packets++;
	dev->stats.rx_bytes += len;

	if (!FUNC8(skb))
		FUNC6(skb);	/* Send the packet upstream */
}