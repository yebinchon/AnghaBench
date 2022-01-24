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
struct mlxsw_sp_span_inspected_port {int /*<<< orphan*/  list; } ;
struct mlxsw_sp_span_entry {int dummy; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_sp_span_type { ____Placeholder_mlxsw_sp_span_type } mlxsw_sp_span_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_SBIB_LEN ; 
 int MLXSW_SP_SPAN_EGRESS ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_span_inspected_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct mlxsw_sp_span_inspected_port* FUNC5 (struct mlxsw_sp_span_entry*,int,struct mlxsw_sp_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_span_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_port*,struct mlxsw_sp_span_entry*,int,int) ; 
 int /*<<< orphan*/  sbib ; 

__attribute__((used)) static void
FUNC8(struct mlxsw_sp_port *port,
				 struct mlxsw_sp_span_entry *span_entry,
				 enum mlxsw_sp_span_type type,
				 bool bind)
{
	struct mlxsw_sp_span_inspected_port *inspected_port;
	struct mlxsw_sp *mlxsw_sp = port->mlxsw_sp;
	char sbib_pl[MLXSW_REG_SBIB_LEN];

	inspected_port = FUNC5(span_entry, type,
							     port, bind);
	if (!inspected_port)
		return;

	if (bind)
		FUNC7(port, span_entry, type,
						  false);
	/* remove the SBIB buffer if it was egress SPAN */
	if (type == MLXSW_SP_SPAN_EGRESS) {
		FUNC3(sbib_pl, port->local_port, 0);
		FUNC4(mlxsw_sp->core, FUNC0(sbib), sbib_pl);
	}

	FUNC6(mlxsw_sp, span_entry);

	FUNC2(&inspected_port->list);
	FUNC1(inspected_port);
}