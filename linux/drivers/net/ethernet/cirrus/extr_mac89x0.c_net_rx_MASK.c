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
struct sk_buff {int* data; int /*<<< orphan*/  protocol; } ;
struct net_local {int dummy; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_1__ stats; scalar_t__ mem_start; } ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ PP_RxFrame ; 
 int /*<<< orphan*/  PP_RxLength ; 
 int /*<<< orphan*/  PP_RxStatus ; 
 int RX_CRC_ERROR ; 
 int RX_DRIBBLE ; 
 int RX_EXTRA_DATA ; 
 int RX_OK ; 
 int RX_RUNT ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 struct net_local* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_local*,int /*<<< orphan*/ ,struct net_device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC8(struct net_device *dev)
{
	struct net_local *lp = FUNC2(dev);
	struct sk_buff *skb;
	int status, length;

	status = FUNC5(dev, PP_RxStatus);
	if ((status & RX_OK) == 0) {
		dev->stats.rx_errors++;
		if (status & RX_RUNT)
				dev->stats.rx_length_errors++;
		if (status & RX_EXTRA_DATA)
				dev->stats.rx_length_errors++;
		if ((status & RX_CRC_ERROR) &&
		    !(status & (RX_EXTRA_DATA|RX_RUNT)))
			/* per str 172 */
			dev->stats.rx_crc_errors++;
		if (status & RX_DRIBBLE)
				dev->stats.rx_frame_errors++;
		return;
	}

	length = FUNC5(dev, PP_RxLength);
	/* Malloc up new buffer. */
	skb = FUNC0(length, GFP_ATOMIC);
	if (skb == NULL) {
		dev->stats.rx_dropped++;
		return;
	}
	FUNC7(skb, length);

	FUNC6(skb, (void *)(dev->mem_start + PP_RxFrame),
				length);

	FUNC3(lp, rx_status, dev, "received %d byte packet of type %x\n",
		  length, skb->data[ETH_ALEN + ETH_ALEN] << 8 |
		  skb->data[ETH_ALEN + ETH_ALEN + 1]);

        skb->protocol=FUNC1(skb,dev);
	FUNC4(skb);
	dev->stats.rx_packets++;
	dev->stats.rx_bytes += length;
}