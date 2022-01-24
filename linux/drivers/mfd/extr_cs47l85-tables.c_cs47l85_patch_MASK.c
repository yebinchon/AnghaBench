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
struct reg_sequence {int dummy; } ;
struct madera {int rev; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap_32bit; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct reg_sequence*) ; 
 struct reg_sequence* cs47l85_reva_16_patch ; 
 struct reg_sequence* cs47l85_reva_32_patch ; 
 struct reg_sequence* cs47l85_revc_16_patch ; 
 struct reg_sequence* cs47l85_revc_32_patch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct reg_sequence const*,unsigned int) ; 

int FUNC3(struct madera *madera)
{
	int ret = 0;
	const struct reg_sequence *patch16;
	const struct reg_sequence *patch32;
	unsigned int num16, num32;

	switch (madera->rev) {
	case 0:
	case 1:
		patch16 = cs47l85_reva_16_patch;
		num16 = FUNC0(cs47l85_reva_16_patch);

		patch32 = cs47l85_reva_32_patch;
		num32 = FUNC0(cs47l85_reva_32_patch);
		break;
	default:
		patch16 = cs47l85_revc_16_patch;
		num16 = FUNC0(cs47l85_revc_16_patch);

		patch32 = cs47l85_revc_32_patch;
		num32 = FUNC0(cs47l85_revc_32_patch);
		break;
	}

	ret = FUNC2(madera->regmap, patch16, num16);
	if (ret < 0) {
		FUNC1(madera->dev,
			"Error in applying 16-bit patch: %d\n", ret);
		return ret;
	}

	ret = FUNC2(madera->regmap_32bit, patch32, num32);
	if (ret < 0) {
		FUNC1(madera->dev,
			"Error in applying 32-bit patch: %d\n", ret);
		return ret;
	}

	return 0;
}