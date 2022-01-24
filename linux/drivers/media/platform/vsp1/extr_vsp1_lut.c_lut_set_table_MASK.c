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
struct vsp1_lut {int /*<<< orphan*/  lock; int /*<<< orphan*/  lut; int /*<<< orphan*/  pool; } ;
struct vsp1_dl_body {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * p_u32; } ;
struct v4l2_ctrl {TYPE_1__ p_new; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int LUT_SIZE ; 
 scalar_t__ VI6_LUT_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vsp1_dl_body*) ; 
 struct vsp1_dl_body* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vsp1_dl_body*) ; 
 int /*<<< orphan*/  FUNC5 (struct vsp1_dl_body*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vsp1_lut *lut, struct v4l2_ctrl *ctrl)
{
	struct vsp1_dl_body *dlb;
	unsigned int i;

	dlb = FUNC3(lut->pool);
	if (!dlb)
		return -ENOMEM;

	for (i = 0; i < LUT_SIZE; ++i)
		FUNC5(dlb, VI6_LUT_TABLE + 4 * i,
				       ctrl->p_new.p_u32[i]);

	FUNC0(&lut->lock);
	FUNC2(lut->lut, dlb);
	FUNC1(&lut->lock);

	FUNC4(dlb);
	return 0;
}