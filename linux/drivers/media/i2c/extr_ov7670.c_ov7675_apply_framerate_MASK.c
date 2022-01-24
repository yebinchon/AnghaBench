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
struct v4l2_subdev {int dummy; } ;
struct ov7670_info {scalar_t__ pll_bypass; int /*<<< orphan*/  clkrc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBLV_BYPASS ; 
 int /*<<< orphan*/  DBLV_X4 ; 
 int /*<<< orphan*/  REG_CLKRC ; 
 int /*<<< orphan*/  REG_DBLV ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ov7670_info* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd)
{
	struct ov7670_info *info = FUNC1(sd);
	int ret;

	ret = FUNC0(sd, REG_CLKRC, info->clkrc);
	if (ret < 0)
		return ret;

	return FUNC0(sd, REG_DBLV,
			    info->pll_bypass ? DBLV_BYPASS : DBLV_X4);
}