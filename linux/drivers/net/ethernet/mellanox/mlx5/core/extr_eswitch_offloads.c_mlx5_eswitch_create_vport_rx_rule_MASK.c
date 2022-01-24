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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_flow_spec {int /*<<< orphan*/  match_criteria_enable; int /*<<< orphan*/  match_criteria; int /*<<< orphan*/  match_value; } ;
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_flow_destination {int dummy; } ;
struct mlx5_flow_act {int /*<<< orphan*/  action; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  ft_offloads; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; TYPE_1__ offloads; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mlx5_flow_handle* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mlx5_flow_handle*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ; 
 int /*<<< orphan*/  MLX5_MATCH_MISC_PARAMETERS ; 
 int /*<<< orphan*/  MLX5_MATCH_MISC_PARAMETERS_2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_flow_handle*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  fte_match_set_misc ; 
 int /*<<< orphan*/  fte_match_set_misc2 ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_flow_spec*) ; 
 struct mlx5_flow_spec* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  metadata_reg_c_0 ; 
 int /*<<< orphan*/  misc_parameters ; 
 int /*<<< orphan*/  misc_parameters_2 ; 
 struct mlx5_flow_handle* FUNC9 (int /*<<< orphan*/ ,struct mlx5_flow_spec*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  source_port ; 

struct mlx5_flow_handle *
FUNC12(struct mlx5_eswitch *esw, u16 vport,
				  struct mlx5_flow_destination *dest)
{
	struct mlx5_flow_act flow_act = {0};
	struct mlx5_flow_handle *flow_rule;
	struct mlx5_flow_spec *spec;
	void *misc;

	spec = FUNC8(sizeof(*spec), GFP_KERNEL);
	if (!spec) {
		flow_rule = FUNC0(-ENOMEM);
		goto out;
	}

	if (FUNC11(esw)) {
		misc = FUNC2(fte_match_param, spec->match_value, misc_parameters_2);
		FUNC3(fte_match_set_misc2, misc, metadata_reg_c_0,
			 FUNC10(esw, vport));

		misc = FUNC2(fte_match_param, spec->match_criteria, misc_parameters_2);
		FUNC4(fte_match_set_misc2, misc, metadata_reg_c_0);

		spec->match_criteria_enable = MLX5_MATCH_MISC_PARAMETERS_2;
	} else {
		misc = FUNC2(fte_match_param, spec->match_value, misc_parameters);
		FUNC3(fte_match_set_misc, misc, source_port, vport);

		misc = FUNC2(fte_match_param, spec->match_criteria, misc_parameters);
		FUNC4(fte_match_set_misc, misc, source_port);

		spec->match_criteria_enable = MLX5_MATCH_MISC_PARAMETERS;
	}

	flow_act.action = MLX5_FLOW_CONTEXT_ACTION_FWD_DEST;
	flow_rule = FUNC9(esw->offloads.ft_offloads, spec,
					&flow_act, dest, 1);
	if (FUNC1(flow_rule)) {
		FUNC6(esw->dev, "fs offloads: Failed to add vport rx rule err %ld\n", FUNC5(flow_rule));
		goto out;
	}

out:
	FUNC7(spec);
	return flow_rule;
}