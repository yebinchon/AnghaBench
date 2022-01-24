#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_flow_spec {int /*<<< orphan*/  match_criteria_enable; int /*<<< orphan*/  match_criteria; int /*<<< orphan*/  match_value; } ;
struct mlx5_flow_handle {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  num; } ;
struct mlx5_flow_destination {TYPE_1__ vport; int /*<<< orphan*/  type; } ;
struct mlx5_flow_act {int /*<<< orphan*/  action; int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {int /*<<< orphan*/  slow_fdb; } ;
struct TYPE_6__ {TYPE_2__ offloads; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; TYPE_3__ fdb_table; int /*<<< orphan*/  manager_vport; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mlx5_flow_handle* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mlx5_flow_handle*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ; 
 int /*<<< orphan*/  MLX5_FLOW_DESTINATION_TYPE_VPORT ; 
 int /*<<< orphan*/  MLX5_MATCH_MISC_PARAMETERS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_flow_handle*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  fte_match_set_misc ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_flow_spec*) ; 
 struct mlx5_flow_spec* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  misc_parameters ; 
 struct mlx5_flow_handle* FUNC9 (int /*<<< orphan*/ ,struct mlx5_flow_spec*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int) ; 
 int /*<<< orphan*/  source_port ; 
 int /*<<< orphan*/  source_sqn ; 

struct mlx5_flow_handle *
FUNC10(struct mlx5_eswitch *esw, u16 vport,
				    u32 sqn)
{
	struct mlx5_flow_act flow_act = {0};
	struct mlx5_flow_destination dest = {};
	struct mlx5_flow_handle *flow_rule;
	struct mlx5_flow_spec *spec;
	void *misc;

	spec = FUNC8(sizeof(*spec), GFP_KERNEL);
	if (!spec) {
		flow_rule = FUNC0(-ENOMEM);
		goto out;
	}

	misc = FUNC2(fte_match_param, spec->match_value, misc_parameters);
	FUNC3(fte_match_set_misc, misc, source_sqn, sqn);
	/* source vport is the esw manager */
	FUNC3(fte_match_set_misc, misc, source_port, esw->manager_vport);

	misc = FUNC2(fte_match_param, spec->match_criteria, misc_parameters);
	FUNC4(fte_match_set_misc, misc, source_sqn);
	FUNC4(fte_match_set_misc, misc, source_port);

	spec->match_criteria_enable = MLX5_MATCH_MISC_PARAMETERS;
	dest.type = MLX5_FLOW_DESTINATION_TYPE_VPORT;
	dest.vport.num = vport;
	flow_act.action = MLX5_FLOW_CONTEXT_ACTION_FWD_DEST;

	flow_rule = FUNC9(esw->fdb_table.offloads.slow_fdb, spec,
					&flow_act, &dest, 1);
	if (FUNC1(flow_rule))
		FUNC6(esw->dev, "FDB: Failed to add send to vport rule err %ld\n", FUNC5(flow_rule));
out:
	FUNC7(spec);
	return flow_rule;
}