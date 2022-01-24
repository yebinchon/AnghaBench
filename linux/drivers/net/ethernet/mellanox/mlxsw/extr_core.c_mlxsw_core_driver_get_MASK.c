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
struct mlxsw_driver {int dummy; } ;

/* Variables and functions */
 struct mlxsw_driver* FUNC0 (char const*) ; 
 int /*<<< orphan*/  mlxsw_core_driver_list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlxsw_driver *FUNC3(const char *kind)
{
	struct mlxsw_driver *mlxsw_driver;

	FUNC1(&mlxsw_core_driver_list_lock);
	mlxsw_driver = FUNC0(kind);
	FUNC2(&mlxsw_core_driver_list_lock);
	return mlxsw_driver;
}