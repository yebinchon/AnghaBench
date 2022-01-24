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
struct trace_seq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;
struct mlx5_flow_destination {int type; int /*<<< orphan*/  tir_num; int /*<<< orphan*/  ft_num; int /*<<< orphan*/  ft; TYPE_1__ vport; } ;

/* Variables and functions */
#define  MLX5_FLOW_DESTINATION_TYPE_COUNTER 133 
#define  MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE 132 
#define  MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE_NUM 131 
#define  MLX5_FLOW_DESTINATION_TYPE_PORT 130 
#define  MLX5_FLOW_DESTINATION_TYPE_TIR 129 
#define  MLX5_FLOW_DESTINATION_TYPE_VPORT 128 
 char* FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,int /*<<< orphan*/ ) ; 

const char *FUNC3(struct trace_seq *p,
			 const struct mlx5_flow_destination *dst,
			 u32 counter_id)
{
	const char *ret = FUNC0(p);

	switch (dst->type) {
	case MLX5_FLOW_DESTINATION_TYPE_VPORT:
		FUNC1(p, "vport=%u\n", dst->vport.num);
		break;
	case MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE:
		FUNC1(p, "ft=%p\n", dst->ft);
		break;
	case MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE_NUM:
		FUNC1(p, "ft_num=%u\n", dst->ft_num);
		break;
	case MLX5_FLOW_DESTINATION_TYPE_TIR:
		FUNC1(p, "tir=%u\n", dst->tir_num);
		break;
	case MLX5_FLOW_DESTINATION_TYPE_COUNTER:
		FUNC1(p, "counter_id=%u\n", counter_id);
		break;
	case MLX5_FLOW_DESTINATION_TYPE_PORT:
		FUNC1(p, "port\n");
		break;
	}

	FUNC2(p, 0);
	return ret;
}