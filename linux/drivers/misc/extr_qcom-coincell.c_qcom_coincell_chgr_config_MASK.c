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
struct qcom_coincell {scalar_t__ base_addr; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int QCOM_COINCELL_ENABLE ; 
 scalar_t__ QCOM_COINCELL_REG_ENABLE ; 
 scalar_t__ QCOM_COINCELL_REG_RSET ; 
 scalar_t__ QCOM_COINCELL_REG_VSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int* qcom_rset_map ; 
 int* qcom_vset_map ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC3(struct qcom_coincell *chgr, int rset,
				     int vset, bool enable)
{
	int i, j, rc;

	/* if disabling, just do that and skip other operations */
	if (!enable)
		return FUNC2(chgr->regmap,
			  chgr->base_addr + QCOM_COINCELL_REG_ENABLE, 0);

	/* find index for current-limiting resistor */
	for (i = 0; i < FUNC0(qcom_rset_map); i++)
		if (rset == qcom_rset_map[i])
			break;

	if (i >= FUNC0(qcom_rset_map)) {
		FUNC1(chgr->dev, "invalid rset-ohms value %d\n", rset);
		return -EINVAL;
	}

	/* find index for charge voltage */
	for (j = 0; j < FUNC0(qcom_vset_map); j++)
		if (vset == qcom_vset_map[j])
			break;

	if (j >= FUNC0(qcom_vset_map)) {
		FUNC1(chgr->dev, "invalid vset-millivolts value %d\n", vset);
		return -EINVAL;
	}

	rc = FUNC2(chgr->regmap,
			  chgr->base_addr + QCOM_COINCELL_REG_RSET, i);
	if (rc) {
		/*
		 * This is mainly to flag a bad base_addr (reg) from dts.
		 * Other failures writing to the registers should be
		 * extremely rare, or indicative of problems that
		 * should be reported elsewhere (eg. spmi failure).
		 */
		FUNC1(chgr->dev, "could not write to RSET register\n");
		return rc;
	}

	rc = FUNC2(chgr->regmap,
		chgr->base_addr + QCOM_COINCELL_REG_VSET, j);
	if (rc)
		return rc;

	/* set 'enable' register */
	return FUNC2(chgr->regmap,
			    chgr->base_addr + QCOM_COINCELL_REG_ENABLE,
			    QCOM_COINCELL_ENABLE);
}