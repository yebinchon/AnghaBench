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
struct tegra_nand_controller {int dummy; } ;
struct nand_sdr_timings {int dummy; } ;
struct nand_data_interface {int dummy; } ;
struct nand_chip {int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nand_sdr_timings const*) ; 
 int NAND_DATA_IFACE_CHECK_ONLY ; 
 int FUNC1 (struct nand_sdr_timings const*) ; 
 struct nand_sdr_timings* FUNC2 (struct nand_data_interface const*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_nand_controller*,struct nand_sdr_timings const*) ; 
 struct tegra_nand_controller* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *chip, int csline,
					const struct nand_data_interface *conf)
{
	struct tegra_nand_controller *ctrl = FUNC4(chip->controller);
	const struct nand_sdr_timings *timings;

	timings = FUNC2(conf);
	if (FUNC0(timings))
		return FUNC1(timings);

	if (csline == NAND_DATA_IFACE_CHECK_ONLY)
		return 0;

	FUNC3(ctrl, timings);

	return 0;
}