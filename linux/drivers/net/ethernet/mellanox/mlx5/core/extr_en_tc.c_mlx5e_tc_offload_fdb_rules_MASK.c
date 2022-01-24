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
struct mlx5e_tc_flow {struct mlx5_flow_handle** rule; } ;
struct mlx5_flow_spec {int dummy; } ;
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_eswitch {int dummy; } ;
struct mlx5_esw_flow_attr {scalar_t__ split_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_flow_handle*) ; 
 struct mlx5_flow_handle* FUNC1 (struct mlx5_eswitch*,struct mlx5_flow_spec*,struct mlx5_esw_flow_attr*) ; 
 struct mlx5_flow_handle* FUNC2 (struct mlx5_eswitch*,struct mlx5_flow_spec*,struct mlx5_esw_flow_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_eswitch*,struct mlx5_flow_handle*,struct mlx5_esw_flow_attr*) ; 

__attribute__((used)) static struct mlx5_flow_handle *
FUNC4(struct mlx5_eswitch *esw,
			   struct mlx5e_tc_flow *flow,
			   struct mlx5_flow_spec *spec,
			   struct mlx5_esw_flow_attr *attr)
{
	struct mlx5_flow_handle *rule;

	rule = FUNC2(esw, spec, attr);
	if (FUNC0(rule))
		return rule;

	if (attr->split_count) {
		flow->rule[1] = FUNC1(esw, spec, attr);
		if (FUNC0(flow->rule[1])) {
			FUNC3(esw, rule, attr);
			return flow->rule[1];
		}
	}

	return rule;
}