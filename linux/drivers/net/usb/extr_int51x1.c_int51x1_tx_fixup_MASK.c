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
struct sk_buff {int len; int /*<<< orphan*/  data; scalar_t__ head; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int INT51X1_HEADER_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC10(struct usbnet *dev,
		struct sk_buff *skb, gfp_t flags)
{
	int pack_len = skb->len;
	int pack_with_header_len = pack_len + INT51X1_HEADER_SIZE;
	int headroom = FUNC7(skb);
	int tailroom = FUNC9(skb);
	int need_tail = 0;
	__le16 *len;

	/* if packet and our header is smaler than 64 pad to 64 (+ ZLP) */
	if ((pack_with_header_len) < dev->maxpacket)
		need_tail = dev->maxpacket - pack_with_header_len + 1;
	/*
	 * usbnet would send a ZLP if packetlength mod urbsize == 0 for us,
	 * but we need to know ourself, because this would add to the length
	 * we send down to the device...
	 */
	else if (!(pack_with_header_len % dev->maxpacket))
		need_tail = 1;

	if (!FUNC5(skb) &&
			(headroom + tailroom >= need_tail + INT51X1_HEADER_SIZE)) {
		if (headroom < INT51X1_HEADER_SIZE || tailroom < need_tail) {
			skb->data = FUNC4(skb->head + INT51X1_HEADER_SIZE,
					skb->data, skb->len);
			FUNC8(skb, skb->len);
		}
	} else {
		struct sk_buff *skb2;

		skb2 = FUNC6(skb,
				INT51X1_HEADER_SIZE,
				need_tail,
				flags);
		FUNC3(skb);
		if (!skb2)
			return NULL;
		skb = skb2;
	}

	pack_len += need_tail;
	pack_len &= 0x07ff;

	len = FUNC0(skb, INT51X1_HEADER_SIZE);
	*len = FUNC2(pack_len);

	if(need_tail)
		FUNC1(skb, need_tail);

	return skb;
}