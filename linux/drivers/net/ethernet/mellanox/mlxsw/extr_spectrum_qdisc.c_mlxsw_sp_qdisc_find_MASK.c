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
typedef  scalar_t__ u32 ;
struct mlxsw_sp_qdisc {scalar_t__ handle; int /*<<< orphan*/  ops; } ;
struct mlxsw_sp_port {struct mlxsw_sp_qdisc* tclass_qdiscs; struct mlxsw_sp_qdisc* root_qdisc; } ;

/* Variables and functions */
 int IEEE_8021QAZ_MAX_TCS ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ TC_H_ROOT ; 

__attribute__((used)) static struct mlxsw_sp_qdisc *
FUNC3(struct mlxsw_sp_port *mlxsw_sp_port, u32 parent,
		    bool root_only)
{
	int tclass, child_index;

	if (parent == TC_H_ROOT)
		return mlxsw_sp_port->root_qdisc;

	if (root_only || !mlxsw_sp_port->root_qdisc ||
	    !mlxsw_sp_port->root_qdisc->ops ||
	    FUNC1(parent) != mlxsw_sp_port->root_qdisc->handle ||
	    FUNC2(parent) > IEEE_8021QAZ_MAX_TCS)
		return NULL;

	child_index = FUNC2(parent);
	tclass = FUNC0(child_index);
	return &mlxsw_sp_port->tclass_qdiscs[tclass];
}