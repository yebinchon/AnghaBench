#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_4__* onfi; } ;
struct nand_chip {int onfi_timing_mode_default; int /*<<< orphan*/  data_interface; TYPE_2__* controller; TYPE_3__ parameters; } ;
struct TYPE_8__ {int async_timing_mode; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* setup_data_interface ) (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAND_DATA_IFACE_CHECK_ONLY ; 
 int /*<<< orphan*/  NAND_SDR_IFACE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 int FUNC3 (struct nand_chip*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *chip)
{
	int modes, mode, ret;

	if (!FUNC2(chip))
		return 0;

	/*
	 * First try to identify the best timings from ONFI parameters and
	 * if the NAND does not support ONFI, fallback to the default ONFI
	 * timing mode.
	 */
	if (chip->parameters.onfi) {
		modes = chip->parameters.onfi->async_timing_mode;
	} else {
		if (!chip->onfi_timing_mode_default)
			return 0;

		modes = FUNC0(chip->onfi_timing_mode_default, 0);
	}

	for (mode = FUNC1(modes) - 1; mode >= 0; mode--) {
		ret = FUNC3(chip, NAND_SDR_IFACE, mode);
		if (ret)
			continue;

		/*
		 * Pass NAND_DATA_IFACE_CHECK_ONLY to only check if the
		 * controller supports the requested timings.
		 */
		ret = chip->controller->ops->setup_data_interface(chip,
						 NAND_DATA_IFACE_CHECK_ONLY,
						 &chip->data_interface);
		if (!ret) {
			chip->onfi_timing_mode_default = mode;
			break;
		}
	}

	return 0;
}