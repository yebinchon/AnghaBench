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
typedef  size_t u16 ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {struct mlxsw_sp_rif** rifs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_rif*) ; 

void FUNC3(struct mlxsw_sp *mlxsw_sp, u16 ul_rif_index)
{
	struct mlxsw_sp_rif *ul_rif;

	FUNC0();

	ul_rif = mlxsw_sp->router->rifs[ul_rif_index];
	if (FUNC1(!ul_rif))
		return;

	FUNC2(ul_rif);
}