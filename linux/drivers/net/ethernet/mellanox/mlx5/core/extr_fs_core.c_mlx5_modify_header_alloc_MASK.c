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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_modify_hdr {int /*<<< orphan*/  ns_type; } ;
struct mlx5_flow_root_namespace {TYPE_1__* cmds; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int (* modify_header_alloc ) (struct mlx5_flow_root_namespace*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct mlx5_modify_hdr*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct mlx5_modify_hdr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mlx5_flow_root_namespace* FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_modify_hdr*) ; 
 struct mlx5_modify_hdr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5_flow_root_namespace*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct mlx5_modify_hdr*) ; 

struct mlx5_modify_hdr *FUNC5(struct mlx5_core_dev *dev,
						 u8 ns_type, u8 num_actions,
						 void *modify_actions)
{
	struct mlx5_flow_root_namespace *root;
	struct mlx5_modify_hdr *modify_hdr;
	int err;

	root = FUNC1(dev, ns_type);
	if (!root)
		return FUNC0(-EOPNOTSUPP);

	modify_hdr = FUNC3(sizeof(*modify_hdr), GFP_KERNEL);
	if (!modify_hdr)
		return FUNC0(-ENOMEM);

	modify_hdr->ns_type = ns_type;
	err = root->cmds->modify_header_alloc(root, ns_type, num_actions,
					      modify_actions, modify_hdr);
	if (err) {
		FUNC2(modify_hdr);
		return FUNC0(err);
	}

	return modify_hdr;
}