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
struct usbnet {int /*<<< orphan*/  net; } ;
struct usb_cdc_ncm_ndp16 {int /*<<< orphan*/  wLength; } ;
struct usb_cdc_ncm_dpe16 {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int USB_CDC_NCM_NDP16_LENGTH_MIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  rx_err ; 

int FUNC3(struct sk_buff *skb_in, int ndpoffset)
{
	struct usbnet *dev = FUNC1(skb_in->dev);
	struct usb_cdc_ncm_ndp16 *ndp16;
	int ret = -EINVAL;

	if ((ndpoffset + sizeof(struct usb_cdc_ncm_ndp16)) > skb_in->len) {
		FUNC2(dev, rx_err, dev->net, "invalid NDP offset  <%u>\n",
			  ndpoffset);
		goto error;
	}
	ndp16 = (struct usb_cdc_ncm_ndp16 *)(skb_in->data + ndpoffset);

	if (FUNC0(ndp16->wLength) < USB_CDC_NCM_NDP16_LENGTH_MIN) {
		FUNC2(dev, rx_err, dev->net, "invalid DPT16 length <%u>\n",
			  FUNC0(ndp16->wLength));
		goto error;
	}

	ret = ((FUNC0(ndp16->wLength) -
					sizeof(struct usb_cdc_ncm_ndp16)) /
					sizeof(struct usb_cdc_ncm_dpe16));
	ret--; /* we process NDP entries except for the last one */

	if ((sizeof(struct usb_cdc_ncm_ndp16) +
	     ret * (sizeof(struct usb_cdc_ncm_dpe16))) > skb_in->len) {
		FUNC2(dev, rx_err, dev->net, "Invalid nframes = %d\n", ret);
		ret = -EINVAL;
	}

error:
	return ret;
}