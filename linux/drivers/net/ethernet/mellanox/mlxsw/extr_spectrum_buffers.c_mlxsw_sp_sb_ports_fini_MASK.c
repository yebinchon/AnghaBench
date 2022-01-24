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
struct mlxsw_sp {TYPE_1__* sb; int /*<<< orphan*/  core; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ports; int /*<<< orphan*/ * prs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_sp *mlxsw_sp)
{
	int max_ports = FUNC1(mlxsw_sp->core);
	int i;

	for (i = max_ports - 1; i >= 0; i--)
		FUNC2(&mlxsw_sp->sb->ports[i]);
	FUNC0(mlxsw_sp->sb->prs);
	FUNC0(mlxsw_sp->sb->ports);
}