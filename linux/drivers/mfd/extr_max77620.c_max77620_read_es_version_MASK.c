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
typedef  unsigned int u8 ;
struct max77620_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  rmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int MAX77620_REG_CID0 ; 
 int MAX77620_REG_CID5 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,unsigned int*) ; 

__attribute__((used)) static int FUNC5(struct max77620_chip *chip)
{
	unsigned int val;
	u8 cid_val[6];
	int i;
	int ret;

	for (i = MAX77620_REG_CID0; i <= MAX77620_REG_CID5; i++) {
		ret = FUNC4(chip->rmap, i, &val);
		if (ret < 0) {
			FUNC2(chip->dev, "Failed to read CID: %d\n", ret);
			return ret;
		}
		FUNC1(chip->dev, "CID%d: 0x%02x\n",
			i - MAX77620_REG_CID0, val);
		cid_val[i - MAX77620_REG_CID0] = val;
	}

	/* CID4 is OTP Version  and CID5 is ES version */
	FUNC3(chip->dev, "PMIC Version OTP:0x%02X and ES:0x%X\n",
		 cid_val[4], FUNC0(cid_val[5]));

	return ret;
}