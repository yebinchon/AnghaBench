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
struct vsp1_hsit {scalar_t__ inverse; } ;
struct vsp1_entity {int /*<<< orphan*/  subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VI6_HSI_CTRL ; 
 int /*<<< orphan*/  VI6_HSI_CTRL_EN ; 
 int /*<<< orphan*/  VI6_HST_CTRL ; 
 int /*<<< orphan*/  VI6_HST_CTRL_EN ; 
 struct vsp1_hsit* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vsp1_hsit*,struct vsp1_dl_body*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vsp1_entity *entity,
				  struct vsp1_pipeline *pipe,
				  struct vsp1_dl_list *dl,
				  struct vsp1_dl_body *dlb)
{
	struct vsp1_hsit *hsit = FUNC0(&entity->subdev);

	if (hsit->inverse)
		FUNC1(hsit, dlb, VI6_HSI_CTRL, VI6_HSI_CTRL_EN);
	else
		FUNC1(hsit, dlb, VI6_HST_CTRL, VI6_HST_CTRL_EN);
}