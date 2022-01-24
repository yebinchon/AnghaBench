#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_1__ descriptor; int /*<<< orphan*/  dev; } ;
struct ath10k_usb {struct ath10k* ar; } ;
struct ath10k_bus_params {scalar_t__ chip_id; int /*<<< orphan*/  dev_type; } ;
struct TYPE_4__ {int vendor; int device; } ;
struct ath10k {int dev_id; TYPE_2__ id; } ;
typedef  enum ath10k_hw_rev { ____Placeholder_ath10k_hw_rev } ath10k_hw_rev ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_BUS_USB ; 
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  ATH10K_DEV_TYPE_HL ; 
 int ATH10K_HW_QCA9377 ; 
 int ENOMEM ; 
 struct ath10k* FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*,struct ath10k_bus_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC4 (struct ath10k*,struct usb_interface*) ; 
 int /*<<< orphan*/  ath10k_usb_hif_ops ; 
 struct ath10k_usb* FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct usb_device* FUNC8 (struct usb_interface*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*) ; 

__attribute__((used)) static int FUNC12(struct usb_interface *interface,
			    const struct usb_device_id *id)
{
	struct ath10k *ar;
	struct ath10k_usb *ar_usb;
	struct usb_device *dev = FUNC8(interface);
	int ret, vendor_id, product_id;
	enum ath10k_hw_rev hw_rev;
	struct ath10k_bus_params bus_params = {};

	/* Assumption: All USB based chipsets (so far) are QCA9377 based.
	 * If there will be newer chipsets that does not use the hw reg
	 * setup as defined in qca6174_regs and qca6174_values, this
	 * assumption is no longer valid and hw_rev must be setup differently
	 * depending on chipset.
	 */
	hw_rev = ATH10K_HW_QCA9377;

	ar = FUNC0(sizeof(*ar_usb), &dev->dev, ATH10K_BUS_USB,
				hw_rev, &ath10k_usb_hif_ops);
	if (!ar) {
		FUNC7(&dev->dev, "failed to allocate core\n");
		return -ENOMEM;
	}

	FUNC10(dev);
	vendor_id = FUNC9(dev->descriptor.idVendor);
	product_id = FUNC9(dev->descriptor.idProduct);

	FUNC3(ar, ATH10K_DBG_BOOT,
		   "usb new func vendor 0x%04x product 0x%04x\n",
		   vendor_id, product_id);

	ar_usb = FUNC5(ar);
	ret = FUNC4(ar, interface);
	ar_usb->ar = ar;

	ar->dev_id = product_id;
	ar->id.vendor = vendor_id;
	ar->id.device = product_id;

	bus_params.dev_type = ATH10K_DEV_TYPE_HL;
	/* TODO: don't know yet how to get chip_id with USB */
	bus_params.chip_id = 0;
	ret = FUNC2(ar, &bus_params);
	if (ret) {
		FUNC6(ar, "failed to register driver core: %d\n", ret);
		goto err;
	}

	/* TODO: remove this once USB support is fully implemented */
	FUNC6(ar, "Warning: ath10k USB support is incomplete, don't expect anything to work!\n");

	return 0;

err:
	FUNC1(ar);

	FUNC11(dev);

	return ret;
}