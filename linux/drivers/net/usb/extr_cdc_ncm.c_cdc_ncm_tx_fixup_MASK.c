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
struct usbnet {scalar_t__* data; } ;
struct sk_buff {int dummy; } ;
struct cdc_ncm_ctx {int /*<<< orphan*/  mtx; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CDC_NCM_NDP16_NOCRC_SIGN ; 
 struct sk_buff* FUNC0 (struct usbnet*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct sk_buff *
FUNC5(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
	struct sk_buff *skb_out;
	struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];

	/*
	 * The Ethernet API we are using does not support transmitting
	 * multiple Ethernet frames in a single call. This driver will
	 * accumulate multiple Ethernet frames and send out a larger
	 * USB frame when the USB buffer is full or when a single jiffies
	 * timeout happens.
	 */
	if (ctx == NULL)
		goto error;

	FUNC3(&ctx->mtx);
	skb_out = FUNC0(dev, skb, FUNC1(USB_CDC_NCM_NDP16_NOCRC_SIGN));
	FUNC4(&ctx->mtx);
	return skb_out;

error:
	if (skb != NULL)
		FUNC2(skb);

	return NULL;
}