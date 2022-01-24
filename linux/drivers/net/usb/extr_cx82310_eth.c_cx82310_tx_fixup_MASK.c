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
struct usbnet {int dummy; } ;
struct sk_buff {int len; int* data; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct usbnet *dev, struct sk_buff *skb,
				       gfp_t flags)
{
	int len = skb->len;

	if (FUNC1(skb, 2)) {
		FUNC0(skb);
		return NULL;
	}
	FUNC2(skb, 2);

	skb->data[0] = len;
	skb->data[1] = len >> 8;

	return skb;
}