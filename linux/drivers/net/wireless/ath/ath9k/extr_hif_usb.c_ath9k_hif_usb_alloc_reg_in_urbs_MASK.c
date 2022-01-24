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
struct hif_device_usb {int /*<<< orphan*/  reg_in_submitted; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_REG_IN_BUF_SIZE ; 
 int MAX_REG_IN_URB_NUM ; 
 int /*<<< orphan*/  USB_REG_IN_PIPE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hif_device_usb*) ; 
 int /*<<< orphan*/  ath9k_hif_usb_reg_in_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 

__attribute__((used)) static int FUNC11(struct hif_device_usb *hif_dev)
{
	struct urb *urb = NULL;
	struct sk_buff *skb = NULL;
	int i, ret;

	FUNC2(&hif_dev->reg_in_submitted);

	for (i = 0; i < MAX_REG_IN_URB_NUM; i++) {

		/* Allocate URB */
		urb = FUNC4(0, GFP_KERNEL);
		if (urb == NULL) {
			ret = -ENOMEM;
			goto err_urb;
		}

		/* Allocate buffer */
		skb = FUNC0(MAX_REG_IN_BUF_SIZE, GFP_KERNEL);
		if (!skb) {
			ret = -ENOMEM;
			goto err_skb;
		}

		FUNC6(urb, hif_dev->udev,
				  FUNC8(hif_dev->udev,
						  USB_REG_IN_PIPE),
				  skb->data, MAX_REG_IN_BUF_SIZE,
				  ath9k_hif_usb_reg_in_cb, skb, 1);

		/* Anchor URB */
		FUNC5(urb, &hif_dev->reg_in_submitted);

		/* Submit URB */
		ret = FUNC9(urb, GFP_KERNEL);
		if (ret) {
			FUNC10(urb);
			goto err_submit;
		}

		/*
		 * Drop reference count.
		 * This ensures that the URB is freed when killing them.
		 */
		FUNC7(urb);
	}

	return 0;

err_submit:
	FUNC3(skb);
err_skb:
	FUNC7(urb);
err_urb:
	FUNC1(hif_dev);
	return ret;
}