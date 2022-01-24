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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_flow_spec {int /*<<< orphan*/  match_value; } ;
struct mlx5_eswitch {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  fte_match_set_misc ; 
 int /*<<< orphan*/  fte_match_set_misc2 ; 
 int /*<<< orphan*/  metadata_reg_c_0 ; 
 int /*<<< orphan*/  misc_parameters ; 
 int /*<<< orphan*/  misc_parameters_2 ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  source_port ; 

__attribute__((used)) static void FUNC4(struct mlx5_eswitch *esw,
					       struct mlx5_eswitch *peer_esw,
					       struct mlx5_flow_spec *spec,
					       u16 vport)
{
	void *misc;

	if (FUNC3(esw)) {
		misc = FUNC0(fte_match_param, spec->match_value,
				    misc_parameters_2);
		FUNC1(fte_match_set_misc2, misc, metadata_reg_c_0,
			 FUNC2(peer_esw,
								   vport));
	} else {
		misc = FUNC0(fte_match_param, spec->match_value,
				    misc_parameters);
		FUNC1(fte_match_set_misc, misc, source_port, vport);
	}
}