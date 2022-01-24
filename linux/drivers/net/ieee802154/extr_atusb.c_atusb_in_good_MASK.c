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
typedef  int u8 ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct urb {int actual_length; struct sk_buff* context; struct usb_device* dev; } ;
struct sk_buff {int* data; } ;
struct atusb {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 struct atusb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct atusb*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	struct usb_device *usb_dev = urb->dev;
	struct sk_buff *skb = urb->context;
	struct atusb *atusb = FUNC0(skb);
	u8 len, lqi;

	if (!urb->actual_length) {
		FUNC2(&usb_dev->dev, "atusb_in: zero-sized URB ?\n");
		return;
	}

	len = *skb->data;

	if (urb->actual_length == 1) {
		FUNC1(atusb, len);
		return;
	}

	if (len + 1 > urb->actual_length - 1) {
		FUNC2(&usb_dev->dev, "atusb_in: frame len %d+1 > URB %u-1\n",
			len, urb->actual_length);
		return;
	}

	if (!FUNC3(len)) {
		FUNC2(&usb_dev->dev, "atusb_in: frame corrupted\n");
		return;
	}

	lqi = skb->data[len + 1];
	FUNC2(&usb_dev->dev, "atusb_in: rx len %d lqi 0x%02x\n", len, lqi);
	FUNC5(skb, 1);	/* remove PHR */
	FUNC6(skb, len);	/* get payload only */
	FUNC4(atusb->hw, skb, lqi);
	urb->context = NULL;	/* skb is gone */
}