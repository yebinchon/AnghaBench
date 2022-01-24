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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct seq_file {struct device* private; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct ab8500 {int dummy; } ;

/* Variables and functions */
 scalar_t__ AB8500_FIRST_SIM_REG ; 
 scalar_t__ AB8500_LAST_SIM_REG ; 
 scalar_t__ AB8500_REGU_CTRL1 ; 
 scalar_t__ AB8500_REGU_CTRL2 ; 
 int /*<<< orphan*/  AB8500_SUPPLY_CONTROL_CONFIG_1 ; 
 scalar_t__ AB8500_SUPPLY_CONTROL_REG ; 
 scalar_t__ AB8505_LAST_SIM_REG ; 
 int FUNC0 (struct device*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct ab8500* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 scalar_t__ FUNC5 (struct ab8500*) ; 
 scalar_t__ FUNC6 (struct ab8500*) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,scalar_t__,...) ; 

__attribute__((used)) static int FUNC8(struct seq_file *s, void *p)
{
	struct device *dev = s->private;
	struct ab8500 *ab8500;
	int err;
	u8 value;
	u8 orig_value;
	u32 bank = AB8500_REGU_CTRL2;
	u32 last_sim_reg = AB8500_LAST_SIM_REG;
	u32 reg;

	ab8500 = FUNC3(dev->parent);
	FUNC4(dev, "WARNING! This operation can interfer with modem side\n"
		"and should only be done with care\n");

	err = FUNC0(dev,
		AB8500_REGU_CTRL1, AB8500_SUPPLY_CONTROL_REG, &orig_value);
	if (err < 0)
		goto report_read_failure;

	/* Config 1 will allow APE side to read SIM registers */
	err = FUNC1(dev,
		AB8500_REGU_CTRL1, AB8500_SUPPLY_CONTROL_REG,
		AB8500_SUPPLY_CONTROL_CONFIG_1);
	if (err < 0)
		goto report_write_failure;

	FUNC7(s, " bank 0x%02X:\n", bank);

	if (FUNC6(ab8500) || FUNC5(ab8500))
		last_sim_reg = AB8505_LAST_SIM_REG;

	for (reg = AB8500_FIRST_SIM_REG; reg <= last_sim_reg; reg++) {
		err = FUNC0(dev,
			bank, reg, &value);
		if (err < 0)
			goto report_read_failure;

		FUNC7(s, "  [0x%02X/0x%02X]: 0x%02X\n", bank, reg, value);
	}
	err = FUNC1(dev,
		AB8500_REGU_CTRL1, AB8500_SUPPLY_CONTROL_REG, orig_value);
	if (err < 0)
		goto report_write_failure;

	return 0;

report_read_failure:
	FUNC2(dev, "ab->read fail %d\n", err);
	return err;

report_write_failure:
	FUNC2(dev, "ab->write fail %d\n", err);
	return err;
}