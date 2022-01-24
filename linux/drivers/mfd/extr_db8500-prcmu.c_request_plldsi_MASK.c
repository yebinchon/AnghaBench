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

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  PRCM_APE_RESETN_CLR ; 
 int PRCM_APE_RESETN_DSIPLL_RESETN ; 
 int /*<<< orphan*/  PRCM_APE_RESETN_SET ; 
 int /*<<< orphan*/  PRCM_MMIP_LS_CLAMP_CLR ; 
 int PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMP ; 
 int PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMPI ; 
 int /*<<< orphan*/  PRCM_MMIP_LS_CLAMP_SET ; 
 int /*<<< orphan*/  PRCM_PLLDSI_ENABLE ; 
 int PRCM_PLLDSI_ENABLE_PRCM_PLLDSI_ENABLE ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(bool enable)
{
	int r = 0;
	u32 val;

	FUNC3((PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMP |
		PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMPI), (enable ?
		PRCM_MMIP_LS_CLAMP_CLR : PRCM_MMIP_LS_CLAMP_SET));

	val = FUNC1(PRCM_PLLDSI_ENABLE);
	if (enable)
		val |= PRCM_PLLDSI_ENABLE_PRCM_PLLDSI_ENABLE;
	else
		val &= ~PRCM_PLLDSI_ENABLE_PRCM_PLLDSI_ENABLE;
	FUNC3(val, PRCM_PLLDSI_ENABLE);

	if (enable) {
		unsigned int i;
		bool locked = FUNC0();

		for (i = 10; !locked && (i > 0); --i) {
			FUNC2(100);
			locked = FUNC0();
		}
		if (locked) {
			FUNC3(PRCM_APE_RESETN_DSIPLL_RESETN,
				PRCM_APE_RESETN_SET);
		} else {
			FUNC3((PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMP |
				PRCM_MMIP_LS_CLAMP_DSIPLL_CLAMPI),
				PRCM_MMIP_LS_CLAMP_SET);
			val &= ~PRCM_PLLDSI_ENABLE_PRCM_PLLDSI_ENABLE;
			FUNC3(val, PRCM_PLLDSI_ENABLE);
			r = -EAGAIN;
		}
	} else {
		FUNC3(PRCM_APE_RESETN_DSIPLL_RESETN, PRCM_APE_RESETN_CLR);
	}
	return r;
}