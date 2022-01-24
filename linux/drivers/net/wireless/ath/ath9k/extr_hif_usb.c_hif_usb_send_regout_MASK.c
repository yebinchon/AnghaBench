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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct hif_device_usb {int /*<<< orphan*/  regout_submitted; int /*<<< orphan*/  udev; } ;
struct cmd_buf {struct hif_device_usb* hif_dev; struct sk_buff* skb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_REG_OUT_PIPE ; 
 int /*<<< orphan*/  hif_usb_regout_cb ; 
 int /*<<< orphan*/  FUNC0 (struct cmd_buf*) ; 
 struct cmd_buf* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct urb* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cmd_buf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 

__attribute__((used)) static int FUNC9(struct hif_device_usb *hif_dev,
			       struct sk_buff *skb)
{
	struct urb *urb;
	struct cmd_buf *cmd;
	int ret = 0;

	urb = FUNC2(0, GFP_KERNEL);
	if (urb == NULL)
		return -ENOMEM;

	cmd = FUNC1(sizeof(*cmd), GFP_KERNEL);
	if (cmd == NULL) {
		FUNC5(urb);
		return -ENOMEM;
	}

	cmd->skb = skb;
	cmd->hif_dev = hif_dev;

	FUNC4(urb, hif_dev->udev,
			 FUNC6(hif_dev->udev, USB_REG_OUT_PIPE),
			 skb->data, skb->len,
			 hif_usb_regout_cb, cmd, 1);

	FUNC3(urb, &hif_dev->regout_submitted);
	ret = FUNC7(urb, GFP_KERNEL);
	if (ret) {
		FUNC8(urb);
		FUNC0(cmd);
	}
	FUNC5(urb);

	return ret;
}