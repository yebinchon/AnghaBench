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
struct cpsw_sl {int control_features; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPSW_SL_MACCONTROL ; 
 int EINVAL ; 
 int FUNC0 (struct cpsw_sl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpsw_sl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

u32 FUNC3(struct cpsw_sl *sl, u32 ctl_funcs)
{
	u32 val;

	if (ctl_funcs & ~sl->control_features) {
		FUNC2(sl->dev, "cpsw_sl: unsupported func 0x%08X\n",
			ctl_funcs & (~sl->control_features));
		return -EINVAL;
	}

	val = FUNC0(sl, CPSW_SL_MACCONTROL);
	val &= ~ctl_funcs;
	FUNC1(sl, CPSW_SL_MACCONTROL, val);

	return 0;
}