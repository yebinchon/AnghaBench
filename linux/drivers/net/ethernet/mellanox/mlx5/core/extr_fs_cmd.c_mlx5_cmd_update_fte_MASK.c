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
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_root_namespace {struct mlx5_core_dev* dev; } ;
struct mlx5_flow_group {int /*<<< orphan*/  id; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_fte {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flow_modify_en; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 TYPE_1__ flow_table_properties_nic_receive ; 
 int FUNC1 (struct mlx5_core_dev*,int,int,struct mlx5_flow_table*,int /*<<< orphan*/ ,struct fs_fte*) ; 

__attribute__((used)) static int FUNC2(struct mlx5_flow_root_namespace *ns,
			       struct mlx5_flow_table *ft,
			       struct mlx5_flow_group *fg,
			       int modify_mask,
			       struct fs_fte *fte)
{
	int opmod;
	struct mlx5_core_dev *dev = ns->dev;
	int atomic_mod_cap = FUNC0(dev,
						flow_table_properties_nic_receive.
						flow_modify_en);
	if (!atomic_mod_cap)
		return -EOPNOTSUPP;
	opmod = 1;

	return	FUNC1(dev, opmod, modify_mask, ft, fg->id, fte);
}