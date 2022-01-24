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
struct vsp1_pipeline {int dummy; } ;
struct vsp1_lut {int /*<<< orphan*/  lock; struct vsp1_dl_body* lut; } ;
struct vsp1_entity {int /*<<< orphan*/  subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vsp1_lut* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vsp1_dl_body*) ; 
 int /*<<< orphan*/  FUNC4 (struct vsp1_dl_list*,struct vsp1_dl_body*) ; 

__attribute__((used)) static void FUNC5(struct vsp1_entity *entity,
				struct vsp1_pipeline *pipe,
				struct vsp1_dl_list *dl,
				struct vsp1_dl_body *dlb)
{
	struct vsp1_lut *lut = FUNC2(&entity->subdev);
	struct vsp1_dl_body *lut_dlb;
	unsigned long flags;

	FUNC0(&lut->lock, flags);
	lut_dlb = lut->lut;
	lut->lut = NULL;
	FUNC1(&lut->lock, flags);

	if (lut_dlb) {
		FUNC4(dl, lut_dlb);

		/* Release our local reference. */
		FUNC3(lut_dlb);
	}
}