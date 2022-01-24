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
struct mlxsw_sp {TYPE_1__* nve; } ;
struct TYPE_2__ {int /*<<< orphan*/  mc_list_ht; int /*<<< orphan*/  num_nve_tunnels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mlxsw_sp *mlxsw_sp)
{
	FUNC0(mlxsw_sp->nve->num_nve_tunnels);
	FUNC2(&mlxsw_sp->nve->mc_list_ht);
	FUNC1(mlxsw_sp->nve);
	mlxsw_sp->nve = NULL;
}