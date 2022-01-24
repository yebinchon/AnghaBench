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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct lan9303 {int /*<<< orphan*/  indirect_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAN9303_SWITCH_CSR_CMD ; 
 int /*<<< orphan*/  LAN9303_SWITCH_CSR_CMD_BUSY ; 
 int /*<<< orphan*/  LAN9303_SWITCH_CSR_CMD_LANES ; 
 int /*<<< orphan*/  LAN9303_SWITCH_CSR_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct lan9303*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct lan9303 *chip, u16 regnum, u32 val)
{
	u32 reg;
	int ret;

	reg = regnum;
	reg |= LAN9303_SWITCH_CSR_CMD_LANES;
	reg |= LAN9303_SWITCH_CSR_CMD_BUSY;

	FUNC2(&chip->indirect_mutex);

	ret = FUNC1(chip);
	if (ret)
		goto on_error;

	ret = FUNC4(chip->regmap, LAN9303_SWITCH_CSR_DATA, val);
	if (ret) {
		FUNC0(chip->dev, "Failed to write csr data reg: %d\n", ret);
		goto on_error;
	}

	/* trigger write */
	ret = FUNC4(chip->regmap, LAN9303_SWITCH_CSR_CMD, reg);
	if (ret)
		FUNC0(chip->dev, "Failed to write csr command reg: %d\n",
			ret);

on_error:
	FUNC3(&chip->indirect_mutex);
	return ret;
}