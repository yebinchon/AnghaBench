#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int MCT_CTRL2_S1CD_BUFEN ; 
 int MCT_CTRL2_S1CD_DBEN ; 
 int MCT_CTRL2_S2CD_BEN ; 
 int MCT_CTRL2_S2CD_BUFEN ; 
 int MCT_CTRL2_VS2_SEL_D0 ; 
 int MCT_CTRL2_VS2_SEL_D1 ; 
 int MCT_CTRL3_S1_AUTO_EN ; 
 int MCT_CTRL3_S2_AUTO_EN ; 
 int MCT_CTRL3_SLOT1_EN ; 
 int MCT_CTRL3_SLOT2_EN ; 
 int /*<<< orphan*/  MENELAUS_MCT_CTRL2 ; 
 int /*<<< orphan*/  MENELAUS_MCT_CTRL3 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* the_menelaus ; 

int FUNC4(int slot, int enable, int power, int cd_en)
{
	int ret, val;

	if (slot != 1 && slot != 2)
		return -EINVAL;
	if (power >= 3)
		return -EINVAL;

	FUNC2(&the_menelaus->lock);

	ret = FUNC0(MENELAUS_MCT_CTRL2);
	if (ret < 0)
		goto out;
	val = ret;
	if (slot == 1) {
		if (cd_en)
			val |= MCT_CTRL2_S1CD_BUFEN | MCT_CTRL2_S1CD_DBEN;
		else
			val &= ~(MCT_CTRL2_S1CD_BUFEN | MCT_CTRL2_S1CD_DBEN);
	} else {
		if (cd_en)
			val |= MCT_CTRL2_S2CD_BUFEN | MCT_CTRL2_S2CD_BEN;
		else
			val &= ~(MCT_CTRL2_S2CD_BUFEN | MCT_CTRL2_S2CD_BEN);
	}
	ret = FUNC1(MENELAUS_MCT_CTRL2, val);
	if (ret < 0)
		goto out;

	ret = FUNC0(MENELAUS_MCT_CTRL3);
	if (ret < 0)
		goto out;
	val = ret;
	if (slot == 1) {
		if (enable)
			val |= MCT_CTRL3_SLOT1_EN;
		else
			val &= ~MCT_CTRL3_SLOT1_EN;
	} else {
		int b;

		if (enable)
			val |= MCT_CTRL3_SLOT2_EN;
		else
			val &= ~MCT_CTRL3_SLOT2_EN;
		b = FUNC0(MENELAUS_MCT_CTRL2);
		b &= ~(MCT_CTRL2_VS2_SEL_D0 | MCT_CTRL2_VS2_SEL_D1);
		b |= power;
		ret = FUNC1(MENELAUS_MCT_CTRL2, b);
		if (ret < 0)
			goto out;
	}
	/* Disable autonomous shutdown */
	val &= ~(MCT_CTRL3_S1_AUTO_EN | MCT_CTRL3_S2_AUTO_EN);
	ret = FUNC1(MENELAUS_MCT_CTRL3, val);
out:
	FUNC3(&the_menelaus->lock);
	return ret;
}