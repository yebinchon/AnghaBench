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
struct dsaf_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSAF_SBM_CFG_EN_S ; 
 scalar_t__ DSAF_SBM_CFG_REG_0_REG ; 
 int /*<<< orphan*/  DSAF_SBM_CFG_SHCUT_EN_S ; 
 int FUNC0 (struct dsaf_device*) ; 
 int FUNC1 (struct dsaf_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dsaf_device*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct dsaf_device *dsaf_dev)
{
	u32 o_sbm_cfg;
	u32 i;

	for (i = 0; i < FUNC0(dsaf_dev); i++) {
		o_sbm_cfg = FUNC1(dsaf_dev,
					  DSAF_SBM_CFG_REG_0_REG + 0x80 * i);
		FUNC2(o_sbm_cfg, DSAF_SBM_CFG_EN_S, 1);
		FUNC2(o_sbm_cfg, DSAF_SBM_CFG_SHCUT_EN_S, 0);
		FUNC3(dsaf_dev,
			       DSAF_SBM_CFG_REG_0_REG + 0x80 * i, o_sbm_cfg);
	}
}