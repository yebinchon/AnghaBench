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
struct usbnet {int maxpacket; } ;
struct sk_buff {int len; int* data; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int DM_TX_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct usbnet *dev, struct sk_buff *skb,
				       gfp_t flags)
{
	int len, pad;

	/* format:
	   b1: packet length low
	   b2: packet length high
	   b3..n: packet data
	*/

	len = skb->len + DM_TX_OVERHEAD;

	/* workaround for dm962x errata with tx fifo getting out of
	 * sync if a USB bulk transfer retry happens right after a
	 * packet with odd / maxpacket length by adding up to 3 bytes
	 * padding.
	 */
	while ((len & 1) || !(len % dev->maxpacket))
		len++;

	len -= DM_TX_OVERHEAD; /* hw header doesn't count as part of length */
	pad = len - skb->len;

	if (FUNC5(skb) < DM_TX_OVERHEAD || FUNC6(skb) < pad) {
		struct sk_buff *skb2;

		skb2 = FUNC4(skb, DM_TX_OVERHEAD, pad, flags);
		FUNC2(skb);
		skb = skb2;
		if (!skb)
			return NULL;
	}

	FUNC0(skb, DM_TX_OVERHEAD);

	if (pad) {
		FUNC3(skb->data + skb->len, 0, pad);
		FUNC1(skb, pad);
	}

	skb->data[0] = len;
	skb->data[1] = len >> 8;

	return skb;
}