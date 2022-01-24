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
typedef  size_t u8 ;
struct mlx5dr_domain {int dummy; } ;
struct mlx5dr_action {int dummy; } ;
struct TYPE_4__ {struct mlx5dr_action* dr_action; } ;
struct mlx5_modify_hdr {TYPE_2__ action; } ;
struct TYPE_3__ {struct mlx5dr_domain* dr_domain; } ;
struct mlx5_flow_root_namespace {int /*<<< orphan*/  dev; TYPE_1__ fs_dr_domain; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct mlx5dr_action* FUNC2 (struct mlx5dr_domain*,int /*<<< orphan*/ ,size_t,void*) ; 
 int /*<<< orphan*/  set_action_in_add_action_in_auto ; 

__attribute__((used)) static int FUNC3(struct mlx5_flow_root_namespace *ns,
					   u8 namespace, u8 num_actions,
					   void *modify_actions,
					   struct mlx5_modify_hdr *modify_hdr)
{
	struct mlx5dr_domain *dr_domain = ns->fs_dr_domain.dr_domain;
	struct mlx5dr_action *action;
	size_t actions_sz;

	actions_sz = FUNC0(set_action_in_add_action_in_auto) *
		num_actions;
	action = FUNC2(dr_domain, 0,
						    actions_sz,
						    modify_actions);
	if (!action) {
		FUNC1(ns->dev, "Failed allocating modify-header action\n");
		return -EINVAL;
	}

	modify_hdr->action.dr_action = action;

	return 0;
}