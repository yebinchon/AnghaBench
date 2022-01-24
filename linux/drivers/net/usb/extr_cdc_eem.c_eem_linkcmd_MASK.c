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
struct usbnet {int /*<<< orphan*/  net; int /*<<< orphan*/  out; int /*<<< orphan*/  udev; } ;
struct urb {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  eem_linkcmd_complete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct urb* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct usbnet *dev, struct sk_buff *skb)
{
	struct urb		*urb;
	int			status;

	urb = FUNC2(0, GFP_ATOMIC);
	if (!urb)
		goto fail;

	FUNC3(urb, dev->udev, dev->out,
			skb->data, skb->len, eem_linkcmd_complete, skb);

	status = FUNC5(urb, GFP_ATOMIC);
	if (status) {
		FUNC4(urb);
fail:
		FUNC0(skb);
		FUNC1(dev->net, "link cmd failure\n");
		return;
	}
}