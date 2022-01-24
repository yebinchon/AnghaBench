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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_root_namespace {int dummy; } ;
struct TYPE_2__ {int (* update_root_ft ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int FUNC1 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct mlx5_flow_root_namespace *ns,
				      struct mlx5_flow_table *ft,
				      u32 underlay_qpn,
				      bool disconnect)
{
	return FUNC0()->update_root_ft(ns, ft, underlay_qpn,
							 disconnect);
}