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
struct usb_device {int /*<<< orphan*/  dev; } ;
struct urb {struct sk_buff* context; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct atusb {int /*<<< orphan*/  rx_urbs; struct usb_device* usb_dev; } ;
typedef  struct atusb* SKB_ATUSB ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_RX_XFER ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atusb_in ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int) ; 
 int FUNC7 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 

__attribute__((used)) static int FUNC9(struct atusb *atusb, struct urb *urb)
{
	struct usb_device *usb_dev = atusb->usb_dev;
	struct sk_buff *skb = urb->context;
	int ret;

	if (!skb) {
		skb = FUNC0(MAX_RX_XFER, GFP_KERNEL);
		if (!skb) {
			FUNC1(&usb_dev->dev,
					     "atusb_in: can't allocate skb\n");
			return -ENOMEM;
		}
		FUNC3(skb, MAX_RX_XFER);
		SKB_ATUSB(skb) = atusb;
	}

	FUNC5(urb, usb_dev, FUNC6(usb_dev, 1),
			  skb->data, MAX_RX_XFER, atusb_in, skb);
	FUNC4(urb, &atusb->rx_urbs);

	ret = FUNC7(urb, GFP_KERNEL);
	if (ret) {
		FUNC8(urb);
		FUNC2(skb);
		urb->context = NULL;
	}
	return ret;
}