#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usbnet {int /*<<< orphan*/  net; } ;
struct sk_buff {int len; int* data; int truesize; } ;

/* Variables and functions */
 int ETH_FRAME_LEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int SR_RX_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct usbnet*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct usbnet *dev, struct sk_buff *skb)
{
	struct sk_buff *sr_skb;
	int len;

	/* skb content (packets) format :
	 *                    p0            p1            p2    ......    pm
	 *                 /      \
	 *            /                \
	 *        /                            \
	 *  /                                        \
	 * p0b0 p0b1 p0b2 p0b3 ...... p0b(n-4) p0b(n-3)...p0bn
	 *
	 * p0 : packet 0
	 * p0b0 : packet 0 byte 0
	 *
	 * b0: rx status
	 * b1: packet length (incl crc) low
	 * b2: packet length (incl crc) high
	 * b3..n-4: packet data
	 * bn-3..bn: ethernet packet crc
	 */
	if (FUNC4(skb->len < SR_RX_OVERHEAD)) {
		FUNC0(dev->net, "unexpected tiny rx frame\n");
		return 0;
	}

	/* one skb may contains multiple packets */
	while (skb->len > SR_RX_OVERHEAD) {
		if (skb->data[0] != 0x40)
			return 0;

		/* ignore the CRC length */
		len = (skb->data[1] | (skb->data[2] << 8)) - 4;

		if (len > ETH_FRAME_LEN)
			return 0;

		/* the last packet of current skb */
		if (skb->len == (len + SR_RX_OVERHEAD))	{
			FUNC2(skb, 3);
			skb->len = len;
			FUNC3(skb, len);
			skb->truesize = len + sizeof(struct sk_buff);
			return 2;
		}

		/* skb_clone is used for address align */
		sr_skb = FUNC1(skb, GFP_ATOMIC);
		if (!sr_skb)
			return 0;

		sr_skb->len = len;
		sr_skb->data = skb->data + 3;
		FUNC3(sr_skb, len);
		sr_skb->truesize = len + sizeof(struct sk_buff);
		FUNC5(dev, sr_skb);

		FUNC2(skb, len + SR_RX_OVERHEAD);
	}

	return 0;
}