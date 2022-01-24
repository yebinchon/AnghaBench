#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  flow_source; } ;
struct mlx5_flow_spec {TYPE_3__ flow_context; int /*<<< orphan*/  match_criteria_enable; int /*<<< orphan*/  match_criteria; int /*<<< orphan*/  match_value; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; } ;
struct mlx5_esw_flow_attr {TYPE_2__* in_rep; TYPE_4__* in_mdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  eswitch; } ;
struct TYPE_8__ {TYPE_1__ priv; } ;
struct TYPE_6__ {scalar_t__ vport; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_FLOW_CONTEXT_FLOW_SOURCE_UPLINK ; 
 int /*<<< orphan*/  MLX5_MATCH_MISC_PARAMETERS ; 
 int /*<<< orphan*/  MLX5_MATCH_MISC_PARAMETERS_2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_VPORT_UPLINK ; 
 int /*<<< orphan*/  flow_source ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  fte_match_set_misc ; 
 int /*<<< orphan*/  fte_match_set_misc2 ; 
 scalar_t__ FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  merged_eswitch ; 
 int /*<<< orphan*/  metadata_reg_c_0 ; 
 int /*<<< orphan*/  misc_parameters ; 
 int /*<<< orphan*/  misc_parameters_2 ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  source_eswitch_owner_vhca_id ; 
 int /*<<< orphan*/  source_port ; 
 int /*<<< orphan*/  vhca_id ; 

__attribute__((used)) static void
FUNC10(struct mlx5_eswitch *esw,
				  struct mlx5_flow_spec *spec,
				  struct mlx5_esw_flow_attr *attr)
{
	void *misc2;
	void *misc;

	/* Use metadata matching because vport is not represented by single
	 * VHCA in dual-port RoCE mode, and matching on source vport may fail.
	 */
	if (FUNC9(esw)) {
		misc2 = FUNC0(fte_match_param, spec->match_value, misc_parameters_2);
		FUNC4(fte_match_set_misc2, misc2, metadata_reg_c_0,
			 FUNC8(attr->in_mdev->priv.eswitch,
								   attr->in_rep->vport));

		misc2 = FUNC0(fte_match_param, spec->match_criteria, misc_parameters_2);
		FUNC5(fte_match_set_misc2, misc2, metadata_reg_c_0);

		spec->match_criteria_enable |= MLX5_MATCH_MISC_PARAMETERS_2;
		misc = FUNC0(fte_match_param, spec->match_criteria, misc_parameters);
		if (FUNC7(misc, 0, FUNC6(fte_match_set_misc)))
			spec->match_criteria_enable |= MLX5_MATCH_MISC_PARAMETERS;
	} else {
		misc = FUNC0(fte_match_param, spec->match_value, misc_parameters);
		FUNC4(fte_match_set_misc, misc, source_port, attr->in_rep->vport);

		if (FUNC1(esw->dev, merged_eswitch))
			FUNC4(fte_match_set_misc, misc,
				 source_eswitch_owner_vhca_id,
				 FUNC3(attr->in_mdev, vhca_id));

		misc = FUNC0(fte_match_param, spec->match_criteria, misc_parameters);
		FUNC5(fte_match_set_misc, misc, source_port);
		if (FUNC1(esw->dev, merged_eswitch))
			FUNC5(fte_match_set_misc, misc,
					 source_eswitch_owner_vhca_id);

		spec->match_criteria_enable |= MLX5_MATCH_MISC_PARAMETERS;
	}

	if (FUNC2(esw->dev, flow_source) &&
	    attr->in_rep->vport == MLX5_VPORT_UPLINK)
		spec->flow_context.flow_source = MLX5_FLOW_CONTEXT_FLOW_SOURCE_UPLINK;
}