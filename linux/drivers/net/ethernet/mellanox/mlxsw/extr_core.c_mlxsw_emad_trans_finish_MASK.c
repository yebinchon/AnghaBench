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
struct mlxsw_reg_trans {int err; int /*<<< orphan*/  completion; int /*<<< orphan*/  list; int /*<<< orphan*/  tx_skb; struct mlxsw_core* core; } ;
struct TYPE_2__ {int /*<<< orphan*/  trans_list_lock; } ;
struct mlxsw_core {TYPE_1__ emad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mlxsw_reg_trans *trans, int err)
{
	struct mlxsw_core *mlxsw_core = trans->core;

	FUNC1(trans->tx_skb);
	FUNC3(&mlxsw_core->emad.trans_list_lock);
	FUNC2(&trans->list);
	FUNC4(&mlxsw_core->emad.trans_list_lock);
	trans->err = err;
	FUNC0(&trans->completion);
}