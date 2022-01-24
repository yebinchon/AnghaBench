#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ushc_int_data {int dummy; } ;
struct ushc_data {int caps; struct mmc_host* mmc; int /*<<< orphan*/ * int_urb; TYPE_5__* csw; struct usb_device* usb_dev; int /*<<< orphan*/ * csw_urb; int /*<<< orphan*/ * data_urb; TYPE_5__* cbw; int /*<<< orphan*/ * cbw_urb; int /*<<< orphan*/ * int_data; int /*<<< orphan*/  lock; } ;
struct ushc_csw {int dummy; } ;
struct ushc_cbw {int dummy; } ;
struct usb_interface {TYPE_4__* cur_altsetting; int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct mmc_host {int f_min; int f_max; int ocr_avail; int caps; int max_seg_size; int max_segs; int max_req_size; int max_blk_size; int max_blk_count; int /*<<< orphan*/ * ops; } ;
struct TYPE_10__ {int /*<<< orphan*/  signature; } ;
struct TYPE_6__ {int bNumEndpoints; } ;
struct TYPE_9__ {TYPE_3__* endpoint; TYPE_1__ desc; } ;
struct TYPE_7__ {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_8__ {TYPE_2__ desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MMC_CAP_4_BIT_DATA ; 
 int MMC_CAP_SDIO_IRQ ; 
 int MMC_CAP_SD_HIGHSPEED ; 
 int MMC_VDD_32_33 ; 
 int MMC_VDD_33_34 ; 
 int /*<<< orphan*/  USHC_CBW_SIGNATURE ; 
 int USHC_GET_CAPS_HIGH_SPD ; 
 int /*<<< orphan*/  cbw_callback ; 
 int /*<<< orphan*/  csw_callback ; 
 int /*<<< orphan*/  int_callback ; 
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mmc_host*) ; 
 struct mmc_host* FUNC3 (int,int /*<<< orphan*/ *) ; 
 struct ushc_data* FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct usb_device*,int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ ,struct ushc_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct ushc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*,struct ushc_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ushc_data*) ; 
 int FUNC16 (struct ushc_data*) ; 
 int FUNC17 (struct ushc_data*) ; 
 int /*<<< orphan*/  ushc_ops ; 

__attribute__((used)) static int FUNC18(struct usb_interface *intf, const struct usb_device_id *id)
{
	struct usb_device *usb_dev = FUNC0(intf);
	struct mmc_host *mmc;
	struct ushc_data *ushc;
	int ret;

	if (intf->cur_altsetting->desc.bNumEndpoints < 1)
		return -ENODEV;

	mmc = FUNC3(sizeof(struct ushc_data), &intf->dev);
	if (mmc == NULL)
		return -ENOMEM;
	ushc = FUNC4(mmc);
	FUNC12(intf, ushc);

	ushc->usb_dev = usb_dev;
	ushc->mmc = mmc;

	FUNC6(&ushc->lock);

	ret = FUNC17(ushc);
	if (ret < 0)
		goto err;

	/* Read capabilities. */
	ret = FUNC16(ushc);
	if (ret < 0)
		goto err;

	mmc->ops = &ushc_ops;

	mmc->f_min = 400000;
	mmc->f_max = 50000000;
	mmc->ocr_avail = MMC_VDD_32_33 | MMC_VDD_33_34;
	mmc->caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SDIO_IRQ;
	mmc->caps |= (ushc->caps & USHC_GET_CAPS_HIGH_SPD) ? MMC_CAP_SD_HIGHSPEED : 0;

	mmc->max_seg_size  = 512*511;
	mmc->max_segs      = 1;
	mmc->max_req_size  = 512*511;
	mmc->max_blk_size  = 512;
	mmc->max_blk_count = 511;

	ushc->int_urb = FUNC7(0, GFP_KERNEL);
	if (ushc->int_urb == NULL) {
		ret = -ENOMEM;
		goto err;
	}
	ushc->int_data = FUNC1(sizeof(struct ushc_int_data), GFP_KERNEL);
	if (ushc->int_data == NULL) {
		ret = -ENOMEM;
		goto err;
	}
	FUNC9(ushc->int_urb, ushc->usb_dev,
			 FUNC11(usb_dev,
					intf->cur_altsetting->endpoint[0].desc.bEndpointAddress),
			 ushc->int_data, sizeof(struct ushc_int_data),
			 int_callback, ushc,
			 intf->cur_altsetting->endpoint[0].desc.bInterval);

	ushc->cbw_urb = FUNC7(0, GFP_KERNEL);
	if (ushc->cbw_urb == NULL) {
		ret = -ENOMEM;
		goto err;
	}
	ushc->cbw = FUNC1(sizeof(struct ushc_cbw), GFP_KERNEL);
	if (ushc->cbw == NULL) {
		ret = -ENOMEM;
		goto err;
	}
	ushc->cbw->signature = USHC_CBW_SIGNATURE;

	FUNC8(ushc->cbw_urb, ushc->usb_dev, FUNC13(usb_dev, 2),
			  ushc->cbw, sizeof(struct ushc_cbw),
			  cbw_callback, ushc);

	ushc->data_urb = FUNC7(0, GFP_KERNEL);
	if (ushc->data_urb == NULL) {
		ret = -ENOMEM;
		goto err;
	}

	ushc->csw_urb = FUNC7(0, GFP_KERNEL);
	if (ushc->csw_urb == NULL) {
		ret = -ENOMEM;
		goto err;
	}
	ushc->csw = FUNC1(sizeof(struct ushc_csw), GFP_KERNEL);
	if (ushc->csw == NULL) {
		ret = -ENOMEM;
		goto err;
	}
	FUNC8(ushc->csw_urb, ushc->usb_dev, FUNC10(usb_dev, 6),
			  ushc->csw, sizeof(struct ushc_csw),
			  csw_callback, ushc);

	ret = FUNC2(ushc->mmc);
	if (ret)
		goto err;

	ret = FUNC14(ushc->int_urb, GFP_KERNEL);
	if (ret < 0) {
		FUNC5(ushc->mmc);
		goto err;
	}

	return 0;

err:
	FUNC15(ushc);
	return ret;
}