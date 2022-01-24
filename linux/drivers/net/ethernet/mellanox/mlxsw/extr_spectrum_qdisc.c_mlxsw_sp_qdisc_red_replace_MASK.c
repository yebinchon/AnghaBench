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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct tc_red_qopt_offload_params {int probability; int /*<<< orphan*/  is_ecn; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct mlxsw_sp_qdisc {int /*<<< orphan*/  tclass_num; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct mlxsw_sp_port *mlxsw_sp_port,
			   struct mlxsw_sp_qdisc *mlxsw_sp_qdisc,
			   void *params)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	struct tc_red_qopt_offload_params *p = params;
	u8 tclass_num = mlxsw_sp_qdisc->tclass_num;
	u32 min, max;
	u64 prob;

	/* calculate probability in percentage */
	prob = p->probability;
	prob *= 100;
	prob = FUNC0(prob, 1 << 16);
	prob = FUNC0(prob, 1 << 16);
	min = FUNC1(mlxsw_sp, p->min);
	max = FUNC1(mlxsw_sp, p->max);
	return FUNC2(mlxsw_sp_port, tclass_num, min,
						 max, prob, p->is_ecn);
}