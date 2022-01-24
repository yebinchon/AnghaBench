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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct hif_device_usb {int /*<<< orphan*/  mgmt_submitted; int /*<<< orphan*/  udev; } ;
struct cmd_buf {struct hif_device_usb* hif_dev; struct sk_buff* skb; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ ATH_USB_TX_STREAM_MODE_TAG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  USB_WLAN_TX_PIPE ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  hif_usb_mgmt_cb ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_buf*) ; 
 struct cmd_buf* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct sk_buff*,int) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct cmd_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 

__attribute__((used)) static int FUNC11(struct hif_device_usb *hif_dev,
			     struct sk_buff *skb)
{
	struct urb *urb;
	struct cmd_buf *cmd;
	int ret = 0;
	__le16 *hdr;

	urb = FUNC4(0, GFP_ATOMIC);
	if (urb == NULL)
		return -ENOMEM;

	cmd = FUNC2(sizeof(*cmd), GFP_ATOMIC);
	if (cmd == NULL) {
		FUNC7(urb);
		return -ENOMEM;
	}

	cmd->skb = skb;
	cmd->hif_dev = hif_dev;

	hdr = FUNC3(skb, 4);
	*hdr++ = FUNC0(skb->len - 4);
	*hdr++ = FUNC0(ATH_USB_TX_STREAM_MODE_TAG);

	FUNC6(urb, hif_dev->udev,
			 FUNC8(hif_dev->udev, USB_WLAN_TX_PIPE),
			 skb->data, skb->len,
			 hif_usb_mgmt_cb, cmd);

	FUNC5(urb, &hif_dev->mgmt_submitted);
	ret = FUNC9(urb, GFP_ATOMIC);
	if (ret) {
		FUNC10(urb);
		FUNC1(cmd);
	}
	FUNC7(urb);

	return ret;
}