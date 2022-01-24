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
struct vsp1_pipeline {int dummy; } ;
struct vsp1_entity {int /*<<< orphan*/  subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;
struct vsp1_clu {scalar_t__ mode; int /*<<< orphan*/  lock; struct vsp1_dl_body* clu; scalar_t__ yuv_mode; } ;

/* Variables and functions */
 scalar_t__ V4L2_CID_VSP1_CLU_MODE_2D ; 
 int /*<<< orphan*/  VI6_CLU_CTRL ; 
 int VI6_CLU_CTRL_AAI ; 
 int VI6_CLU_CTRL_AX1I_2D ; 
 int VI6_CLU_CTRL_AX2I_2D ; 
 int VI6_CLU_CTRL_EN ; 
 int VI6_CLU_CTRL_M2D ; 
 int VI6_CLU_CTRL_MVS ; 
 int VI6_CLU_CTRL_OS0_2D ; 
 int VI6_CLU_CTRL_OS1_2D ; 
 int VI6_CLU_CTRL_OS2_2D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vsp1_clu* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vsp1_clu*,struct vsp1_dl_body*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vsp1_dl_body*) ; 
 int /*<<< orphan*/  FUNC5 (struct vsp1_dl_list*,struct vsp1_dl_body*) ; 

__attribute__((used)) static void FUNC6(struct vsp1_entity *entity,
				struct vsp1_pipeline *pipe,
				struct vsp1_dl_list *dl,
				struct vsp1_dl_body *dlb)
{
	struct vsp1_clu *clu = FUNC2(&entity->subdev);
	struct vsp1_dl_body *clu_dlb;
	unsigned long flags;
	u32 ctrl = VI6_CLU_CTRL_AAI | VI6_CLU_CTRL_MVS | VI6_CLU_CTRL_EN;

	/* 2D mode can only be used with the YCbCr pixel encoding. */
	if (clu->mode == V4L2_CID_VSP1_CLU_MODE_2D && clu->yuv_mode)
		ctrl |= VI6_CLU_CTRL_AX1I_2D | VI6_CLU_CTRL_AX2I_2D
		     |  VI6_CLU_CTRL_OS0_2D | VI6_CLU_CTRL_OS1_2D
		     |  VI6_CLU_CTRL_OS2_2D | VI6_CLU_CTRL_M2D;

	FUNC3(clu, dlb, VI6_CLU_CTRL, ctrl);

	FUNC0(&clu->lock, flags);
	clu_dlb = clu->clu;
	clu->clu = NULL;
	FUNC1(&clu->lock, flags);

	if (clu_dlb) {
		FUNC5(dl, clu_dlb);

		/* Release our local reference. */
		FUNC4(clu_dlb);
	}
}