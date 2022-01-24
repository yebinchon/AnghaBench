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
struct mlxsw_sp_fib_node {int dummy; } ;
typedef  struct mlxsw_sp_fib_node mlxsw_sp_fib4_entry ;
struct mlxsw_sp {TYPE_2__* bus_info; TYPE_1__* router; } ;
struct fib_entry_notifier_info {int /*<<< orphan*/  dst_len; int /*<<< orphan*/  dst; int /*<<< orphan*/  tb_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ aborted; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_fib_node*) ; 
 int /*<<< orphan*/  MLXSW_SP_L3_PROTO_IPV4 ; 
 int FUNC1 (struct mlxsw_sp_fib_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct mlxsw_sp_fib_node* FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,struct fib_entry_notifier_info const*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,int) ; 
 int FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,int,int) ; 
 struct mlxsw_sp_fib_node* FUNC7 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ; 

__attribute__((used)) static int
FUNC9(struct mlxsw_sp *mlxsw_sp,
			 const struct fib_entry_notifier_info *fen_info,
			 bool replace, bool append)
{
	struct mlxsw_sp_fib4_entry *fib4_entry;
	struct mlxsw_sp_fib_node *fib_node;
	int err;

	if (mlxsw_sp->router->aborted)
		return 0;

	fib_node = FUNC7(mlxsw_sp, fen_info->tb_id,
					 &fen_info->dst, sizeof(fen_info->dst),
					 fen_info->dst_len,
					 MLXSW_SP_L3_PROTO_IPV4);
	if (FUNC0(fib_node)) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to get FIB node\n");
		return FUNC1(fib_node);
	}

	fib4_entry = FUNC3(mlxsw_sp, fib_node, fen_info);
	if (FUNC0(fib4_entry)) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to create FIB entry\n");
		err = FUNC1(fib4_entry);
		goto err_fib4_entry_create;
	}

	err = FUNC6(mlxsw_sp, fib4_entry, replace,
					    append);
	if (err) {
		FUNC2(mlxsw_sp->bus_info->dev, "Failed to link FIB entry to node\n");
		goto err_fib4_node_entry_link;
	}

	FUNC5(mlxsw_sp, fib4_entry, replace);

	return 0;

err_fib4_node_entry_link:
	FUNC4(mlxsw_sp, fib4_entry);
err_fib4_entry_create:
	FUNC8(mlxsw_sp, fib_node);
	return err;
}