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
struct sdio_func {int num; int /*<<< orphan*/  dev; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct TYPE_4__ {struct brcmf_sdio_dev* sdio; } ;
struct brcmf_sdio_dev {TYPE_3__* func2; TYPE_2__* func1; TYPE_1__ bus_priv; } ;
struct brcmf_bus {TYPE_3__* func2; TYPE_2__* func1; TYPE_1__ bus_priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_sdio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_sdio_dev*) ; 
 struct brcmf_sdio_dev* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_sdio_dev*) ; 

__attribute__((used)) static void FUNC6(struct sdio_func *func)
{
	struct brcmf_bus *bus_if;
	struct brcmf_sdio_dev *sdiodev;

	FUNC0(SDIO, "Enter\n");
	FUNC0(SDIO, "sdio vendor ID: 0x%04x\n", func->vendor);
	FUNC0(SDIO, "sdio device ID: 0x%04x\n", func->device);
	FUNC0(SDIO, "Function: %d\n", func->num);

	bus_if = FUNC3(&func->dev);
	if (bus_if) {
		sdiodev = bus_if->bus_priv.sdio;

		/* start by unregistering irqs */
		FUNC1(sdiodev);

		if (func->num != 1)
			return;

		/* only proceed with rest of cleanup if func 1 */
		FUNC2(sdiodev);

		FUNC4(&sdiodev->func1->dev, NULL);
		FUNC4(&sdiodev->func2->dev, NULL);

		FUNC5(bus_if);
		FUNC5(sdiodev);
	}

	FUNC0(SDIO, "Exit\n");
}