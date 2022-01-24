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
 int /*<<< orphan*/  SR_TX_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct usbnet *dev, struct sk_buff *skb,
				       gfp_t flags)
{
	int len;

	/* SR9700 can only send out one ethernet packet at once.
	 *
	 * b0 b1 b2 b3 ...... b(n-4) b(n-3)...bn
	 *
	 * b0: rx status
	 * b1: packet length (incl crc) low
	 * b2: packet length (incl crc) high
	 * b3..n-4: packet data
	 * bn-3..bn: ethernet packet crc
	 */

	len = skb->len;

	if (FUNC2(skb, SR_TX_OVERHEAD)) {
		FUNC1(skb);
		return NULL;
	}

	FUNC0(skb, SR_TX_OVERHEAD);

	/* usbnet adds padding if length is a multiple of packet size
	 * if so, adjust length value in header
	 */
	if ((skb->len % dev->maxpacket) == 0)
		len++;

	skb->data[0] = len;
	skb->data[1] = len >> 8;

	return skb;
}