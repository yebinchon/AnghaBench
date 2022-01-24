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
struct mlxsw_rx_listener_item {int /*<<< orphan*/  list; } ;
struct mlxsw_rx_listener {int dummy; } ;
struct mlxsw_core {int dummy; } ;

/* Variables and functions */
 struct mlxsw_rx_listener_item* FUNC0 (struct mlxsw_core*,struct mlxsw_rx_listener const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_rx_listener_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct mlxsw_core *mlxsw_core,
				       const struct mlxsw_rx_listener *rxl,
				       void *priv)
{
	struct mlxsw_rx_listener_item *rxl_item;

	rxl_item = FUNC0(mlxsw_core, rxl, priv);
	if (!rxl_item)
		return;
	FUNC2(&rxl_item->list);
	FUNC3();
	FUNC1(rxl_item);
}