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
struct vsp1_dl_body {int dummy; } ;
struct vsp1_clu {int /*<<< orphan*/  lock; int /*<<< orphan*/  clu; int /*<<< orphan*/  pool; } ;
struct TYPE_2__ {int /*<<< orphan*/ * p_u32; } ;
struct v4l2_ctrl {TYPE_1__ p_new; } ;

/* Variables and functions */
 unsigned int CLU_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  VI6_CLU_ADDR ; 
 int /*<<< orphan*/  VI6_CLU_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vsp1_dl_body*) ; 
 struct vsp1_dl_body* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vsp1_dl_body*) ; 
 int /*<<< orphan*/  FUNC5 (struct vsp1_dl_body*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vsp1_clu *clu, struct v4l2_ctrl *ctrl)
{
	struct vsp1_dl_body *dlb;
	unsigned int i;

	dlb = FUNC3(clu->pool);
	if (!dlb)
		return -ENOMEM;

	FUNC5(dlb, VI6_CLU_ADDR, 0);
	for (i = 0; i < CLU_SIZE; ++i)
		FUNC5(dlb, VI6_CLU_DATA, ctrl->p_new.p_u32[i]);

	FUNC0(&clu->lock);
	FUNC2(clu->clu, dlb);
	FUNC1(&clu->lock);

	FUNC4(dlb);
	return 0;
}