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
 int /*<<< orphan*/  LAN9303_SWITCH_CSR_CMD_RW ; 
 int /*<<< orphan*/  LAN9303_SWITCH_CSR_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct lan9303*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct lan9303 *chip, u16 regnum, u32 *val)
{
	u32 reg;
	int ret;

	reg = regnum;
	reg |= LAN9303_SWITCH_CSR_CMD_LANES;
	reg |= LAN9303_SWITCH_CSR_CMD_RW;
	reg |= LAN9303_SWITCH_CSR_CMD_BUSY;

	FUNC3(&chip->indirect_mutex);

	ret = FUNC2(chip);
	if (ret)
		goto on_error;

	/* trigger read */
	ret = FUNC5(chip->regmap, LAN9303_SWITCH_CSR_CMD, reg);
	if (ret) {
		FUNC0(chip->dev, "Failed to write csr command reg: %d\n",
			ret);
		goto on_error;
	}

	ret = FUNC2(chip);
	if (ret)
		goto on_error;

	ret = FUNC1(chip->regmap, LAN9303_SWITCH_CSR_DATA, val);
	if (ret)
		FUNC0(chip->dev, "Failed to read csr data reg: %d\n", ret);
on_error:
	FUNC4(&chip->indirect_mutex);
	return ret;
}