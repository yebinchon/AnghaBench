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
typedef  scalar_t__ u8 ;
struct mlxsw_sp_port {int /*<<< orphan*/  dev; } ;
struct dcb_ieee_app_dscp_map {scalar_t__* map; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dcb_ieee_app_dscp_map*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct mlxsw_sp_port *mlxsw_sp_port,
				    u8 default_prio,
				    struct dcb_ieee_app_dscp_map *map)
{
	int i;

	FUNC1(mlxsw_sp_port->dev, map);
	for (i = 0; i < FUNC0(map->map); ++i) {
		if (map->map[i])
			map->map[i] = FUNC2(map->map[i]) - 1;
		else
			map->map[i] = default_prio;
	}
}