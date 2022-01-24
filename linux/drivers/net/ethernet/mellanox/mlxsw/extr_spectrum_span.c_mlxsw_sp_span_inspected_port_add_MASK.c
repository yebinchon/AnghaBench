#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mlxsw_sp_span_inspected_port {int type; int bound; int /*<<< orphan*/  list; int /*<<< orphan*/  local_port; } ;
struct mlxsw_sp_span_entry {int /*<<< orphan*/  bound_ports_list; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; TYPE_2__* dev; struct mlxsw_sp* mlxsw_sp; } ;
struct TYPE_3__ {int entries_count; struct mlxsw_sp_span_entry* entries; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; TYPE_1__ span; } ;
typedef  enum mlxsw_sp_span_type { ____Placeholder_mlxsw_sp_span_type } mlxsw_sp_span_type ;
struct TYPE_4__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_SBIB_LEN ; 
 int MLXSW_SP_SPAN_EGRESS ; 
 struct mlxsw_sp_span_inspected_port* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct mlxsw_sp_span_entry*,int,struct mlxsw_sp_port*,int) ; 
 int FUNC6 (struct mlxsw_sp_port*,struct mlxsw_sp_span_entry*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  sbib ; 

__attribute__((used)) static int
FUNC9(struct mlxsw_sp_port *port,
				 struct mlxsw_sp_span_entry *span_entry,
				 enum mlxsw_sp_span_type type,
				 bool bind)
{
	struct mlxsw_sp_span_inspected_port *inspected_port;
	struct mlxsw_sp *mlxsw_sp = port->mlxsw_sp;
	char sbib_pl[MLXSW_REG_SBIB_LEN];
	int i;
	int err;

	/* A given (source port, direction) can only be bound to one analyzer,
	 * so if a binding is requested, check for conflicts.
	 */
	if (bind)
		for (i = 0; i < mlxsw_sp->span.entries_count; i++) {
			struct mlxsw_sp_span_entry *curr =
				&mlxsw_sp->span.entries[i];

			if (FUNC5(curr, type,
								port, bind))
				return -EEXIST;
		}

	/* if it is an egress SPAN, bind a shared buffer to it */
	if (type == MLXSW_SP_SPAN_EGRESS) {
		u32 buffsize = FUNC7(mlxsw_sp,
							     port->dev->mtu);

		FUNC3(sbib_pl, port->local_port, buffsize);
		err = FUNC4(mlxsw_sp->core, FUNC0(sbib), sbib_pl);
		if (err) {
			FUNC8(port->dev, "Could not create shared buffer for mirroring\n");
			return err;
		}
	}

	if (bind) {
		err = FUNC6(port, span_entry, type,
							true);
		if (err)
			goto err_port_bind;
	}

	inspected_port = FUNC1(sizeof(*inspected_port), GFP_KERNEL);
	if (!inspected_port) {
		err = -ENOMEM;
		goto err_inspected_port_alloc;
	}
	inspected_port->local_port = port->local_port;
	inspected_port->type = type;
	inspected_port->bound = bind;
	FUNC2(&inspected_port->list, &span_entry->bound_ports_list);

	return 0;

err_inspected_port_alloc:
	if (bind)
		FUNC6(port, span_entry, type,
						  false);
err_port_bind:
	if (type == MLXSW_SP_SPAN_EGRESS) {
		FUNC3(sbib_pl, port->local_port, 0);
		FUNC4(mlxsw_sp->core, FUNC0(sbib), sbib_pl);
	}
	return err;
}