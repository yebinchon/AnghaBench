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
struct mlxsw_reg_trans {int err; int /*<<< orphan*/  bulk_list; int /*<<< orphan*/  emad_status; int /*<<< orphan*/  type; TYPE_2__* reg; int /*<<< orphan*/  tid; int /*<<< orphan*/  retries; int /*<<< orphan*/  timeout_dw; int /*<<< orphan*/  completion; struct mlxsw_core* core; } ;
struct mlxsw_core {TYPE_1__* bus_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_EMAD_MAX_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_reg_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct mlxsw_reg_trans *trans)
{
	struct mlxsw_core *mlxsw_core = trans->core;
	int err;

	FUNC10(&trans->completion);
	FUNC0(&trans->timeout_dw);
	err = trans->err;

	if (trans->retries)
		FUNC2(mlxsw_core->bus_info->dev, "EMAD retries (%d/%d) (tid=%llx)\n",
			 trans->retries, MLXSW_EMAD_MAX_RETRY, trans->tid);
	if (err) {
		FUNC1(mlxsw_core->bus_info->dev, "EMAD reg access failed (tid=%llx,reg_id=%x(%s),type=%s,status=%x(%s))\n",
			trans->tid, trans->reg->id,
			FUNC7(trans->reg->id),
			FUNC5(trans->type),
			trans->emad_status,
			FUNC6(trans->emad_status));
		FUNC9(FUNC8(mlxsw_core),
				    trans->emad_status,
				    FUNC6(trans->emad_status));
	}

	FUNC4(&trans->bulk_list);
	FUNC3(trans, rcu);
	return err;
}