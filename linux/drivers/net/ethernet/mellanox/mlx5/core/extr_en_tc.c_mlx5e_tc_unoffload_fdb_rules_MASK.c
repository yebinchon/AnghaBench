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
struct mlx5e_tc_flow {int /*<<< orphan*/ * rule; } ;
struct mlx5_eswitch {int dummy; } ;
struct mlx5_esw_flow_attr {scalar_t__ split_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFFLOADED ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_tc_flow*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_eswitch*,int /*<<< orphan*/ ,struct mlx5_esw_flow_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_eswitch*,int /*<<< orphan*/ ,struct mlx5_esw_flow_attr*) ; 

__attribute__((used)) static void
FUNC3(struct mlx5_eswitch *esw,
			     struct mlx5e_tc_flow *flow,
			   struct mlx5_esw_flow_attr *attr)
{
	FUNC0(flow, OFFLOADED);

	if (attr->split_count)
		FUNC1(esw, flow->rule[1], attr);

	FUNC2(esw, flow->rule[0], attr);
}