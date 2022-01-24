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
struct sec_pmic_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap_pmic; } ;

/* Variables and functions */
 int /*<<< orphan*/  S2MPS11_REG_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC2(struct sec_pmic_dev *sec_pmic)
{
	unsigned int val;

	/* For each device type, the REG_ID is always the first register */
	if (!FUNC1(sec_pmic->regmap_pmic, S2MPS11_REG_ID, &val))
		FUNC0(sec_pmic->dev, "Revision: 0x%x\n", val);
}