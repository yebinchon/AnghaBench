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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {unsigned int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  collisions; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct mace_frame {unsigned int rcvsts; unsigned int rcvcnt; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 unsigned int RS_CLSN ; 
 unsigned int RS_FCSERR ; 
 unsigned int RS_FRAMERR ; 
 unsigned int RS_OFLO ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC1 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, struct mace_frame *mf)
{
	struct sk_buff *skb;
	unsigned int frame_status = mf->rcvsts;

	if (frame_status & (RS_OFLO | RS_CLSN | RS_FRAMERR | RS_FCSERR)) {
		dev->stats.rx_errors++;
		if (frame_status & RS_OFLO)
			dev->stats.rx_fifo_errors++;
		if (frame_status & RS_CLSN)
			dev->stats.collisions++;
		if (frame_status & RS_FRAMERR)
			dev->stats.rx_frame_errors++;
		if (frame_status & RS_FCSERR)
			dev->stats.rx_crc_errors++;
	} else {
		unsigned int frame_length = mf->rcvcnt + ((frame_status & 0x0F) << 8 );

		skb = FUNC1(dev, frame_length + 2);
		if (!skb) {
			dev->stats.rx_dropped++;
			return;
		}
		FUNC4(skb, 2);
		FUNC3(skb, mf->data, frame_length);

		skb->protocol = FUNC0(skb, dev);
		FUNC2(skb);
		dev->stats.rx_packets++;
		dev->stats.rx_bytes += frame_length;
	}
}