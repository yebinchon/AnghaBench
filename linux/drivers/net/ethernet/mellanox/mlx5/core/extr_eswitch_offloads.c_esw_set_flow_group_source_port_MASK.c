#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  source_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  metadata_reg_c_0; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_MATCH_MISC_PARAMETERS ; 
 int /*<<< orphan*/  MLX5_MATCH_MISC_PARAMETERS_2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_flow_group_in ; 
 int /*<<< orphan*/  fte_match_param ; 
 void* match_criteria ; 
 int /*<<< orphan*/  match_criteria_enable ; 
 TYPE_2__ misc_parameters ; 
 TYPE_1__ misc_parameters_2 ; 
 scalar_t__ FUNC3 (struct mlx5_eswitch*) ; 

__attribute__((used)) static void FUNC4(struct mlx5_eswitch *esw,
					   u32 *flow_group_in)
{
	void *match_criteria = FUNC0(create_flow_group_in,
					    flow_group_in,
					    match_criteria);

	if (FUNC3(esw)) {
		FUNC1(create_flow_group_in, flow_group_in,
			 match_criteria_enable,
			 MLX5_MATCH_MISC_PARAMETERS_2);

		FUNC2(fte_match_param, match_criteria,
				 misc_parameters_2.metadata_reg_c_0);
	} else {
		FUNC1(create_flow_group_in, flow_group_in,
			 match_criteria_enable,
			 MLX5_MATCH_MISC_PARAMETERS);

		FUNC2(fte_match_param, match_criteria,
				 misc_parameters.source_port);
	}
}