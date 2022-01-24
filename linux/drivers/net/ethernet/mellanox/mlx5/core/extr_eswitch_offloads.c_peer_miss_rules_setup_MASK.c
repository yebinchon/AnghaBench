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
struct mlx5_flow_spec {int /*<<< orphan*/  match_criteria; int /*<<< orphan*/  match_criteria_enable; int /*<<< orphan*/  match_value; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  vhca_id; int /*<<< orphan*/  num; } ;
struct mlx5_flow_destination {TYPE_3__ vport; int /*<<< orphan*/  type; } ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_5__ {TYPE_1__* eswitch; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  manager_vport; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_FLOW_DESTINATION_TYPE_VPORT ; 
 int /*<<< orphan*/  MLX5_FLOW_DEST_VPORT_VHCA_ID ; 
 int /*<<< orphan*/  MLX5_MATCH_MISC_PARAMETERS ; 
 int /*<<< orphan*/  MLX5_MATCH_MISC_PARAMETERS_2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  fte_match_set_misc ; 
 int /*<<< orphan*/  fte_match_set_misc2 ; 
 int /*<<< orphan*/  metadata_reg_c_0 ; 
 int /*<<< orphan*/  misc_parameters ; 
 int /*<<< orphan*/  misc_parameters_2 ; 
 scalar_t__ FUNC4 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  source_eswitch_owner_vhca_id ; 
 int /*<<< orphan*/  source_port ; 
 int /*<<< orphan*/  vhca_id ; 

__attribute__((used)) static void FUNC5(struct mlx5_eswitch *esw,
				  struct mlx5_core_dev *peer_dev,
				  struct mlx5_flow_spec *spec,
				  struct mlx5_flow_destination *dest)
{
	void *misc;

	if (FUNC4(esw)) {
		misc = FUNC0(fte_match_param, spec->match_criteria,
				    misc_parameters_2);
		FUNC3(fte_match_set_misc2, misc, metadata_reg_c_0);

		spec->match_criteria_enable = MLX5_MATCH_MISC_PARAMETERS_2;
	} else {
		misc = FUNC0(fte_match_param, spec->match_value,
				    misc_parameters);

		FUNC2(fte_match_set_misc, misc, source_eswitch_owner_vhca_id,
			 FUNC1(peer_dev, vhca_id));

		spec->match_criteria_enable = MLX5_MATCH_MISC_PARAMETERS;

		misc = FUNC0(fte_match_param, spec->match_criteria,
				    misc_parameters);
		FUNC3(fte_match_set_misc, misc, source_port);
		FUNC3(fte_match_set_misc, misc,
				 source_eswitch_owner_vhca_id);
	}

	dest->type = MLX5_FLOW_DESTINATION_TYPE_VPORT;
	dest->vport.num = peer_dev->priv.eswitch->manager_vport;
	dest->vport.vhca_id = FUNC1(peer_dev, vhca_id);
	dest->vport.flags |= MLX5_FLOW_DEST_VPORT_VHCA_ID;
}