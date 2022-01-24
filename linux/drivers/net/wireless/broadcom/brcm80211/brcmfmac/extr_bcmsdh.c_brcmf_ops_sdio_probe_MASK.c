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
struct device {int dummy; } ;
struct sdio_func {int num; struct device dev; TYPE_1__* card; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  class; } ;
struct sdio_device_id {int dummy; } ;
struct TYPE_5__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_sdio_dev {TYPE_3__* func1; struct device* dev; int /*<<< orphan*/  proto_type; TYPE_2__ bus_priv; struct brcmf_sdio_dev* bus_if; struct sdio_func* func2; } ;
struct brcmf_bus {TYPE_3__* func1; struct device* dev; int /*<<< orphan*/  proto_type; TYPE_2__ bus_priv; struct brcmf_bus* bus_if; struct sdio_func* func2; } ;
struct TYPE_6__ {struct device dev; } ;
struct TYPE_4__ {TYPE_3__** sdio_func; int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_PROTO_BCDC ; 
 int /*<<< orphan*/  BRCMF_SDIOD_DOWN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MMC_QUIRK_LENIENT_FN0 ; 
 int /*<<< orphan*/  SDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_sdio_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct brcmf_sdio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct brcmf_sdio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_sdio_dev*) ; 
 struct brcmf_sdio_dev* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sdio_func *func,
				const struct sdio_device_id *id)
{
	int err;
	struct brcmf_sdio_dev *sdiodev;
	struct brcmf_bus *bus_if;
	struct device *dev;

	FUNC0(SDIO, "Enter\n");
	FUNC0(SDIO, "Class=%x\n", func->class);
	FUNC0(SDIO, "sdio vendor ID: 0x%04x\n", func->vendor);
	FUNC0(SDIO, "sdio device ID: 0x%04x\n", func->device);
	FUNC0(SDIO, "Function#: %d\n", func->num);

	dev = &func->dev;

	/* Set MMC_QUIRK_LENIENT_FN0 for this card */
	func->card->quirks |= MMC_QUIRK_LENIENT_FN0;

	/* prohibit ACPI power management for this device */
	FUNC2(dev, 0);

	/* Consume func num 1 but dont do anything with it. */
	if (func->num == 1)
		return 0;

	/* Ignore anything but func 2 */
	if (func->num != 2)
		return -ENODEV;

	bus_if = FUNC7(sizeof(struct brcmf_bus), GFP_KERNEL);
	if (!bus_if)
		return -ENOMEM;
	sdiodev = FUNC7(sizeof(struct brcmf_sdio_dev), GFP_KERNEL);
	if (!sdiodev) {
		FUNC6(bus_if);
		return -ENOMEM;
	}

	/* store refs to functions used. mmc_card does
	 * not hold the F0 function pointer.
	 */
	sdiodev->func1 = func->card->sdio_func[0];
	sdiodev->func2 = func;

	sdiodev->bus_if = bus_if;
	bus_if->bus_priv.sdio = sdiodev;
	bus_if->proto_type = BRCMF_PROTO_BCDC;
	FUNC5(&func->dev, bus_if);
	FUNC5(&sdiodev->func1->dev, bus_if);
	sdiodev->dev = &sdiodev->func1->dev;

	FUNC3(sdiodev, BRCMF_SDIOD_DOWN);

	FUNC0(SDIO, "F2 found, calling brcmf_sdiod_probe...\n");
	err = FUNC4(sdiodev);
	if (err) {
		FUNC1("F2 error, probe failed %d...\n", err);
		goto fail;
	}

	FUNC0(SDIO, "F2 init completed...\n");
	return 0;

fail:
	FUNC5(&func->dev, NULL);
	FUNC5(&sdiodev->func1->dev, NULL);
	FUNC6(sdiodev);
	FUNC6(bus_if);
	return err;
}