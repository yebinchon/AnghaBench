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
typedef  int u32 ;
typedef  int u16 ;
struct cphy {int count; int bmsr; int elmer_gpo; int act_count; int act_on; int /*<<< orphan*/ * adapter; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_ELMER0_GPO ; 
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 int /*<<< orphan*/  MDIO_STAT1 ; 
 int MDIO_STAT1_LSTATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SUNI1x10GEXP_BITMSK_MSTAT_SNAP ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_MSTAT_CONTROL ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_MSTAT_COUNTER_1_LOW ; 
 int /*<<< orphan*/  SUNI1x10GEXP_REG_MSTAT_COUNTER_33_LOW ; 
 int cphy_cause_link_change ; 
 int /*<<< orphan*/  FUNC1 (struct cphy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct cphy *cphy)
{
	u32 val;
	u16 val16;
	u16 status;
	u32 act_count;
	adapter_t *adapter;
	adapter = cphy->adapter;

	if (cphy->count == 50) {
		FUNC1(cphy, MDIO_MMD_PMAPMD, MDIO_STAT1, &val);
		val16 = (u16) val;
		status = cphy->bmsr ^ val16;

		if (status & MDIO_STAT1_LSTATUS)
			FUNC4(adapter, 0);
		cphy->bmsr = val16;

		/* We have only enabled link change interrupts so it
		   must be that
		 */
		cphy->count = 0;
	}

	FUNC6(adapter, FUNC0(SUNI1x10GEXP_REG_MSTAT_CONTROL),
		SUNI1x10GEXP_BITMSK_MSTAT_SNAP);
	FUNC5(adapter,
		FUNC0(SUNI1x10GEXP_REG_MSTAT_COUNTER_1_LOW), &act_count);
	FUNC5(adapter,
		FUNC0(SUNI1x10GEXP_REG_MSTAT_COUNTER_33_LOW), &val);
	act_count += val;

	/* Populate elmer_gpo with the register value */
	FUNC5(adapter, A_ELMER0_GPO, &val);
	cphy->elmer_gpo = val;

	if ( (val & (1 << 8)) || (val & (1 << 19)) ||
	     (cphy->act_count == act_count) || cphy->act_on ) {
		if (FUNC2(adapter))
			val |= (1 << 9);
		else if (FUNC3(adapter))
			val |= (1 << 20);
		cphy->act_on = 0;
	} else {
		if (FUNC2(adapter))
			val &= ~(1 << 9);
		else if (FUNC3(adapter))
			val &= ~(1 << 20);
		cphy->act_on = 1;
	}

	FUNC6(adapter, A_ELMER0_GPO, val);

	cphy->elmer_gpo = val;
	cphy->act_count = act_count;
	cphy->count++;

	return cphy_cause_link_change;
}