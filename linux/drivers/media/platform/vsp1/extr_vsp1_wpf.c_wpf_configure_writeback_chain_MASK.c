#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int index; TYPE_1__* vsp1; } ;
struct vsp1_rwpf {TYPE_2__ entity; int /*<<< orphan*/  dlm; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vsp1_dl_body*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vsp1_dl_list*,struct vsp1_dl_list*) ; 
 struct vsp1_dl_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct vsp1_dl_body* FUNC5 (struct vsp1_dl_list*) ; 

__attribute__((used)) static int FUNC6(struct vsp1_rwpf *wpf,
					 struct vsp1_dl_list *dl)
{
	unsigned int index = wpf->entity.index;
	struct vsp1_dl_list *dl_next;
	struct vsp1_dl_body *dlb;

	dl_next = FUNC4(wpf->dlm);
	if (!dl_next) {
		FUNC1(wpf->entity.vsp1->dev,
			"Failed to obtain a dl list, disabling writeback\n");
		return -ENOMEM;
	}

	dlb = FUNC5(dl_next);
	FUNC2(dlb, FUNC0(index), 0);
	FUNC3(dl, dl_next);

	return 0;
}