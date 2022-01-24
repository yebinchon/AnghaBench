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
struct mlxsw_sp {int /*<<< orphan*/  listeners_count; int /*<<< orphan*/  listeners; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp_listener ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mlxsw_sp *mlxsw_sp)
{
	FUNC1(mlxsw_sp, mlxsw_sp->listeners,
				  mlxsw_sp->listeners_count);
	FUNC1(mlxsw_sp, mlxsw_sp_listener,
				  FUNC0(mlxsw_sp_listener));
}