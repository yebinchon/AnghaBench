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
struct usb_cdc_ncm_nth16 {scalar_t__ dwSignature; int /*<<< orphan*/  wNdpIndex; int /*<<< orphan*/  wSequence; int /*<<< orphan*/  wBlockLength; } ;
struct usb_cdc_ncm_ndp16 {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; int /*<<< orphan*/  dev; } ;
struct cdc_ncm_ctx {int rx_max; int rx_seq; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  USB_CDC_NCM_NTH16_SIGN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct usbnet* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  rx_err ; 

int FUNC5(struct cdc_ncm_ctx *ctx, struct sk_buff *skb_in)
{
	struct usbnet *dev = FUNC3(skb_in->dev);
	struct usb_cdc_ncm_nth16 *nth16;
	int len;
	int ret = -EINVAL;

	if (ctx == NULL)
		goto error;

	if (skb_in->len < (sizeof(struct usb_cdc_ncm_nth16) +
					sizeof(struct usb_cdc_ncm_ndp16))) {
		FUNC4(dev, rx_err, dev->net, "frame too short\n");
		goto error;
	}

	nth16 = (struct usb_cdc_ncm_nth16 *)skb_in->data;

	if (nth16->dwSignature != FUNC0(USB_CDC_NCM_NTH16_SIGN)) {
		FUNC4(dev, rx_err, dev->net,
			  "invalid NTH16 signature <%#010x>\n",
			  FUNC2(nth16->dwSignature));
		goto error;
	}

	len = FUNC1(nth16->wBlockLength);
	if (len > ctx->rx_max) {
		FUNC4(dev, rx_err, dev->net,
			  "unsupported NTB block length %u/%u\n", len,
			  ctx->rx_max);
		goto error;
	}

	if ((ctx->rx_seq + 1) != FUNC1(nth16->wSequence) &&
	    (ctx->rx_seq || FUNC1(nth16->wSequence)) &&
	    !((ctx->rx_seq == 0xffff) && !FUNC1(nth16->wSequence))) {
		FUNC4(dev, rx_err, dev->net,
			  "sequence number glitch prev=%d curr=%d\n",
			  ctx->rx_seq, FUNC1(nth16->wSequence));
	}
	ctx->rx_seq = FUNC1(nth16->wSequence);

	ret = FUNC1(nth16->wNdpIndex);
error:
	return ret;
}