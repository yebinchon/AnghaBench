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
struct mlx5e_tc_flow {TYPE_2__* esw_attr; } ;
struct mlx5_flow_spec {int /*<<< orphan*/  match_value; } ;
struct TYPE_4__ {TYPE_1__* parse_attr; } ;
struct TYPE_3__ {struct mlx5_flow_spec spec; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  fte_match_set_misc3 ; 
 int /*<<< orphan*/  geneve_tlv_option_0_data ; 
 int /*<<< orphan*/  misc_parameters_3 ; 

__attribute__((used)) static bool FUNC2(struct mlx5e_tc_flow *flow)
{
	struct mlx5_flow_spec *spec = &flow->esw_attr->parse_attr->spec;
	void *headers_v = FUNC0(fte_match_param,
				       spec->match_value,
				       misc_parameters_3);
	u32 geneve_tlv_opt_0_data = FUNC1(fte_match_set_misc3,
					     headers_v,
					     geneve_tlv_option_0_data);

	return !!geneve_tlv_opt_0_data;
}