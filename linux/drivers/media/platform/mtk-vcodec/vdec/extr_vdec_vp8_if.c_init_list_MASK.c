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
struct vdec_vp8_inst {int /*<<< orphan*/  available_fb_node_list; TYPE_1__* dec_fb; int /*<<< orphan*/  fb_disp_list; int /*<<< orphan*/  fb_free_list; int /*<<< orphan*/  fb_use_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; int /*<<< orphan*/ * fb; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vdec_vp8_inst *inst)
{
	int i;

	FUNC1(&inst->available_fb_node_list);
	FUNC1(&inst->fb_use_list);
	FUNC1(&inst->fb_free_list);
	FUNC1(&inst->fb_disp_list);

	for (i = 0; i < FUNC0(inst->dec_fb); i++) {
		FUNC1(&inst->dec_fb[i].list);
		inst->dec_fb[i].fb = NULL;
		FUNC2(&inst->dec_fb[i].list,
			      &inst->available_fb_node_list);
	}
}