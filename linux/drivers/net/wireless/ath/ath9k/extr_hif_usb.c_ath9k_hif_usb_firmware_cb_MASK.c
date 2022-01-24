#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hif_device_usb {int /*<<< orphan*/ * htc_handle; int /*<<< orphan*/  fw_done; int /*<<< orphan*/  flags; TYPE_3__* usb_device_id; TYPE_2__* udev; TYPE_1__* interface; int /*<<< orphan*/  fw_size; int /*<<< orphan*/  fw_data; int /*<<< orphan*/  fw_name; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  driver_info; int /*<<< orphan*/  idProduct; } ;
struct TYPE_5__ {int /*<<< orphan*/  product; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HIF_USB_READY ; 
 int FUNC0 (struct hif_device_usb*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hif_device_usb*) ; 
 int FUNC2 (struct hif_device_usb*) ; 
 int /*<<< orphan*/  FUNC3 (struct hif_device_usb*) ; 
 int /*<<< orphan*/ * FUNC4 (struct hif_device_usb*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hif_usb ; 
 int /*<<< orphan*/  FUNC9 (struct firmware const*) ; 

__attribute__((used)) static void FUNC10(const struct firmware *fw, void *context)
{
	struct hif_device_usb *hif_dev = context;
	int ret;

	if (!fw) {
		ret = FUNC0(hif_dev, false);
		if (!ret)
			return;

		FUNC8(&hif_dev->udev->dev,
			"ath9k_htc: Failed to get firmware %s\n",
			hif_dev->fw_name);
		goto err_fw;
	}

	hif_dev->htc_handle = FUNC4(hif_dev, &hif_usb,
						 &hif_dev->udev->dev);
	if (hif_dev->htc_handle == NULL)
		goto err_dev_alloc;

	hif_dev->fw_data = fw->data;
	hif_dev->fw_size = fw->size;

	/* Proceed with initialization */

	ret = FUNC2(hif_dev);
	if (ret)
		goto err_dev_init;

	ret = FUNC6(hif_dev->htc_handle,
				&hif_dev->interface->dev,
				hif_dev->usb_device_id->idProduct,
				hif_dev->udev->product,
				hif_dev->usb_device_id->driver_info);
	if (ret) {
		ret = -EINVAL;
		goto err_htc_hw_init;
	}

	FUNC9(fw);
	hif_dev->flags |= HIF_USB_READY;
	FUNC7(&hif_dev->fw_done);

	return;

err_htc_hw_init:
	FUNC1(hif_dev);
err_dev_init:
	FUNC5(hif_dev->htc_handle);
err_dev_alloc:
	FUNC9(fw);
err_fw:
	FUNC3(hif_dev);
}