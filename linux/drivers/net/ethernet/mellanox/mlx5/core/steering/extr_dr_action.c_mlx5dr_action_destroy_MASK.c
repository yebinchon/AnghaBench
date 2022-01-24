#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_5__* dmn; struct mlx5dr_action* data; int /*<<< orphan*/  chunk; } ;
struct TYPE_10__ {TYPE_3__* dmn; int /*<<< orphan*/  reformat_id; } ;
struct TYPE_8__ {TYPE_1__* tbl; int /*<<< orphan*/  is_fw_tbl; } ;
struct mlx5dr_action {int action_type; TYPE_6__ rewrite; TYPE_4__ reformat; TYPE_2__ dest_tbl; int /*<<< orphan*/  refcount; } ;
struct TYPE_11__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_9__ {int /*<<< orphan*/  refcount; int /*<<< orphan*/  mdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
#define  DR_ACTION_TYP_FT 133 
#define  DR_ACTION_TYP_L2_TO_TNL_L2 132 
#define  DR_ACTION_TYP_L2_TO_TNL_L3 131 
#define  DR_ACTION_TYP_MODIFY_HDR 130 
#define  DR_ACTION_TYP_TNL_L2_TO_L2 129 
#define  DR_ACTION_TYP_TNL_L3_TO_L2 128 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5dr_action*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct mlx5dr_action *action)
{
	if (FUNC4(&action->refcount) > 1)
		return -EBUSY;

	switch (action->action_type) {
	case DR_ACTION_TYP_FT:
		if (!action->dest_tbl.is_fw_tbl)
			FUNC3(&action->dest_tbl.tbl->refcount);
		break;
	case DR_ACTION_TYP_TNL_L2_TO_L2:
		FUNC3(&action->reformat.dmn->refcount);
		break;
	case DR_ACTION_TYP_TNL_L3_TO_L2:
		FUNC2(action->rewrite.chunk);
		FUNC3(&action->reformat.dmn->refcount);
		break;
	case DR_ACTION_TYP_L2_TO_TNL_L2:
	case DR_ACTION_TYP_L2_TO_TNL_L3:
		FUNC1((action->reformat.dmn)->mdev,
						action->reformat.reformat_id);
		FUNC3(&action->reformat.dmn->refcount);
		break;
	case DR_ACTION_TYP_MODIFY_HDR:
		FUNC2(action->rewrite.chunk);
		FUNC0(action->rewrite.data);
		FUNC3(&action->rewrite.dmn->refcount);
		break;
	default:
		break;
	}

	FUNC0(action);
	return 0;
}