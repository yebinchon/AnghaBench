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
typedef  int u32 ;
struct usbnet {int maxpacket; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int gso_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 void* FUNC5 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *
FUNC7(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
	u32 tx_hdr1, tx_hdr2;
	int frame_size = dev->maxpacket;
	int mss = FUNC6(skb)->gso_size;
	int headroom;
	void *ptr;

	tx_hdr1 = skb->len;
	tx_hdr2 = mss;
	if (((skb->len + 8) % frame_size) == 0)
		tx_hdr2 |= 0x80008000;	/* Enable padding */

	headroom = FUNC4(skb) - 8;

	if ((FUNC3(skb) || headroom < 0) &&
	    FUNC1(skb, headroom < 0 ? 8 : 0, 0, GFP_ATOMIC)) {
		FUNC0(skb);
		return NULL;
	}

	ptr = FUNC5(skb, 8);
	FUNC2(tx_hdr1, ptr);
	FUNC2(tx_hdr2, ptr + 4);

	return skb;
}