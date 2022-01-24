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
struct urb {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct hif_device_usb {int /*<<< orphan*/  rx_submitted; int /*<<< orphan*/  udev; int /*<<< orphan*/  rx_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_RX_BUF_SIZE ; 
 int MAX_RX_URB_NUM ; 
 int /*<<< orphan*/  USB_WLAN_RX_PIPE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hif_device_usb*) ; 
 int /*<<< orphan*/  ath9k_hif_usb_rx_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*) ; 

__attribute__((used)) static int FUNC12(struct hif_device_usb *hif_dev)
{
	struct urb *urb = NULL;
	struct sk_buff *skb = NULL;
	int i, ret;

	FUNC2(&hif_dev->rx_submitted);
	FUNC4(&hif_dev->rx_lock);

	for (i = 0; i < MAX_RX_URB_NUM; i++) {

		/* Allocate URB */
		urb = FUNC5(0, GFP_KERNEL);
		if (urb == NULL) {
			ret = -ENOMEM;
			goto err_urb;
		}

		/* Allocate buffer */
		skb = FUNC0(MAX_RX_BUF_SIZE, GFP_KERNEL);
		if (!skb) {
			ret = -ENOMEM;
			goto err_skb;
		}

		FUNC7(urb, hif_dev->udev,
				  FUNC9(hif_dev->udev,
						  USB_WLAN_RX_PIPE),
				  skb->data, MAX_RX_BUF_SIZE,
				  ath9k_hif_usb_rx_cb, skb);

		/* Anchor URB */
		FUNC6(urb, &hif_dev->rx_submitted);

		/* Submit URB */
		ret = FUNC10(urb, GFP_KERNEL);
		if (ret) {
			FUNC11(urb);
			goto err_submit;
		}

		/*
		 * Drop reference count.
		 * This ensures that the URB is freed when killing them.
		 */
		FUNC8(urb);
	}

	return 0;

err_submit:
	FUNC3(skb);
err_skb:
	FUNC8(urb);
err_urb:
	FUNC1(hif_dev);
	return ret;
}