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
struct mlx5_modify_hdr {int /*<<< orphan*/  ns_type; } ;
struct mlx5_flow_root_namespace {TYPE_1__* cmds; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* modify_header_dealloc ) (struct mlx5_flow_root_namespace*,struct mlx5_modify_hdr*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct mlx5_flow_root_namespace* FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_modify_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_flow_root_namespace*,struct mlx5_modify_hdr*) ; 

void FUNC4(struct mlx5_core_dev *dev,
				struct mlx5_modify_hdr *modify_hdr)
{
	struct mlx5_flow_root_namespace *root;

	root = FUNC1(dev, modify_hdr->ns_type);
	if (FUNC0(!root))
		return;
	root->cmds->modify_header_dealloc(root, modify_hdr);
	FUNC2(modify_hdr);
}