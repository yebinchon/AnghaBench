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
struct tc_prio_qopt_offload_graft_params {scalar_t__ band; scalar_t__ child_handle; } ;
struct mlxsw_sp_qdisc {scalar_t__ handle; } ;
struct mlxsw_sp_port {struct mlxsw_sp_qdisc* tclass_qdiscs; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ IEEE_8021QAZ_MAX_TCS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*) ; 
 struct mlxsw_sp_qdisc* FUNC2 (struct mlxsw_sp_port*,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct mlxsw_sp_port *mlxsw_sp_port,
			  struct mlxsw_sp_qdisc *mlxsw_sp_qdisc,
			  struct tc_prio_qopt_offload_graft_params *p)
{
	int tclass_num = FUNC0(p->band);
	struct mlxsw_sp_qdisc *old_qdisc;

	/* Check if the grafted qdisc is already in its "new" location. If so -
	 * nothing needs to be done.
	 */
	if (p->band < IEEE_8021QAZ_MAX_TCS &&
	    mlxsw_sp_port->tclass_qdiscs[tclass_num].handle == p->child_handle)
		return 0;

	/* See if the grafted qdisc is already offloaded on any tclass. If so,
	 * unoffload it.
	 */
	old_qdisc = FUNC2(mlxsw_sp_port,
						  p->child_handle);
	if (old_qdisc)
		FUNC1(mlxsw_sp_port, old_qdisc);

	FUNC1(mlxsw_sp_port,
			       &mlxsw_sp_port->tclass_qdiscs[tclass_num]);
	return -EOPNOTSUPP;
}