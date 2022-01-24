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
struct tc_cls_matchall_offload {int /*<<< orphan*/  cookie; } ;
struct mlxsw_sp_port_mall_tc_entry {int type; int /*<<< orphan*/  mirror; int /*<<< orphan*/  list; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  MLXSW_SP_PORT_MALL_MIRROR 129 
#define  MLXSW_SP_PORT_MALL_SAMPLE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_port_mall_tc_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_port*) ; 
 struct mlxsw_sp_port_mall_tc_entry* FUNC5 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(struct mlxsw_sp_port *mlxsw_sp_port,
					   struct tc_cls_matchall_offload *f)
{
	struct mlxsw_sp_port_mall_tc_entry *mall_tc_entry;

	mall_tc_entry = FUNC5(mlxsw_sp_port,
							 f->cookie);
	if (!mall_tc_entry) {
		FUNC6(mlxsw_sp_port->dev, "tc entry not found on port\n");
		return;
	}
	FUNC2(&mall_tc_entry->list);

	switch (mall_tc_entry->type) {
	case MLXSW_SP_PORT_MALL_MIRROR:
		FUNC3(mlxsw_sp_port,
						      &mall_tc_entry->mirror);
		break;
	case MLXSW_SP_PORT_MALL_SAMPLE:
		FUNC4(mlxsw_sp_port);
		break;
	default:
		FUNC0(1);
	}

	FUNC1(mall_tc_entry);
}