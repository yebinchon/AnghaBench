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
struct nand_data_interface {int dummy; } ;
struct nand_chip {struct nand_data_interface data_interface; int /*<<< orphan*/  onfi_timing_mode_default; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nand_chip*) ; 
 int FUNC1 (struct nand_chip*,int) ; 
 int FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int) ; 
 int FUNC4 (struct nand_chip*,int) ; 

int FUNC5(struct nand_chip *chip, int chipnr)
{
	struct nand_data_interface saved_data_intf = chip->data_interface;
	int ret;

	ret = FUNC1(chip, chipnr);
	if (ret)
		return ret;

	/*
	 * The CS line has to be released before we can apply the new NAND
	 * interface settings, hence this weird nand_select_target()
	 * nand_deselect_target() dance.
	 */
	FUNC3(chip, chipnr);
	ret = FUNC2(chip);
	FUNC0(chip);
	if (ret)
		return ret;

	/*
	 * A nand_reset_data_interface() put both the NAND chip and the NAND
	 * controller in timings mode 0. If the default mode for this chip is
	 * also 0, no need to proceed to the change again. Plus, at probe time,
	 * nand_setup_data_interface() uses ->set/get_features() which would
	 * fail anyway as the parameter page is not available yet.
	 */
	if (!chip->onfi_timing_mode_default)
		return 0;

	chip->data_interface = saved_data_intf;
	ret = FUNC4(chip, chipnr);
	if (ret)
		return ret;

	return 0;
}