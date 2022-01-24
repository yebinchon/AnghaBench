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
typedef  int u32 ;
struct usbnet {int maxpacket; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; scalar_t__ head; } ;
typedef  int /*<<< orphan*/  padbytes ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*) ; 
 void* FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 void* FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC12(struct usbnet *dev, struct sk_buff *skb,
					gfp_t flags)
{
	int headroom = FUNC5(skb);
	int tailroom = FUNC10(skb);
	u32 padbytes = 0xffff0000;
	u32 packet_len;
	int padlen;
	void *ptr;

	padlen = ((skb->len + 4) % (dev->maxpacket - 1)) ? 0 : 4;

	if ((!FUNC3(skb)) && ((headroom + tailroom) >= (4 + padlen))) {
		if ((headroom < 4) || (tailroom < padlen)) {
			skb->data = FUNC1(skb->head + 4, skb->data,
					    skb->len);
			FUNC8(skb, skb->len);
		}
	} else {
		struct sk_buff *skb2;
		skb2 = FUNC4(skb, 4, padlen, flags);
		FUNC0(skb);
		skb = skb2;
		if (!skb)
			return NULL;
	}

	ptr = FUNC6(skb, 4);
	packet_len = (((skb->len - 4) ^ 0x0000ffff) << 16) + (skb->len - 4);
	FUNC2(packet_len, ptr);

	if (padlen) {
		FUNC2(padbytes, FUNC9(skb));
		FUNC7(skb, sizeof(padbytes));
	}

	FUNC11(skb, 1, 0);
	return skb;
}