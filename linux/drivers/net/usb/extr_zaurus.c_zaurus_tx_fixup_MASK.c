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
struct usbnet {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *
FUNC6(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
	int			padlen;
	struct sk_buff		*skb2;

	padlen = 2;
	if (!FUNC2(skb)) {
		int	tailroom = FUNC5(skb);
		if ((padlen + 4) <= tailroom)
			goto done;
	}
	skb2 = FUNC3(skb, 0, 4 + padlen, flags);
	FUNC1(skb);
	skb = skb2;
	if (skb) {
		u32		fcs;
done:
		fcs = FUNC0(~0, skb->data, skb->len);
		fcs = ~fcs;

		FUNC4(skb, fcs & 0xff);
		FUNC4(skb, (fcs >> 8) & 0xff);
		FUNC4(skb, (fcs >> 16) & 0xff);
		FUNC4(skb, (fcs >> 24) & 0xff);
	}
	return skb;
}