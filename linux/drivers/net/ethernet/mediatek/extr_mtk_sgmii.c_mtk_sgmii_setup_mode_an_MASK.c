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
struct mtk_sgmii {int /*<<< orphan*/ * regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int SGMII_AN_RESTART ; 
 unsigned int SGMII_LINK_TIMER_DEFAULT ; 
 unsigned int SGMII_PHYA_PWD ; 
 unsigned int SGMII_REMOTE_FAULT_DIS ; 
 int /*<<< orphan*/  SGMSYS_PCS_CONTROL_1 ; 
 int /*<<< orphan*/  SGMSYS_PCS_LINK_TIMER ; 
 int /*<<< orphan*/  SGMSYS_QPHY_PWR_STATE_CTRL ; 
 int /*<<< orphan*/  SGMSYS_SGMII_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC2(struct mtk_sgmii *ss, int id)
{
	unsigned int val;

	if (!ss->regmap[id])
		return -EINVAL;

	/* Setup the link timer and QPHY power up inside SGMIISYS */
	FUNC1(ss->regmap[id], SGMSYS_PCS_LINK_TIMER,
		     SGMII_LINK_TIMER_DEFAULT);

	FUNC0(ss->regmap[id], SGMSYS_SGMII_MODE, &val);
	val |= SGMII_REMOTE_FAULT_DIS;
	FUNC1(ss->regmap[id], SGMSYS_SGMII_MODE, val);

	FUNC0(ss->regmap[id], SGMSYS_PCS_CONTROL_1, &val);
	val |= SGMII_AN_RESTART;
	FUNC1(ss->regmap[id], SGMSYS_PCS_CONTROL_1, val);

	FUNC0(ss->regmap[id], SGMSYS_QPHY_PWR_STATE_CTRL, &val);
	val &= ~SGMII_PHYA_PWD;
	FUNC1(ss->regmap[id], SGMSYS_QPHY_PWR_STATE_CTRL, val);

	return 0;
}