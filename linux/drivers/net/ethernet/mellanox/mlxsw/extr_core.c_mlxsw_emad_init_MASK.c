#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct workqueue_struct {int dummy; } ;
struct TYPE_6__ {int use_emad; int /*<<< orphan*/  trans_list_lock; int /*<<< orphan*/  trans_list; int /*<<< orphan*/  tid; } ;
struct mlxsw_core {struct workqueue_struct* emad_wq; TYPE_3__ emad; TYPE_2__* driver; TYPE_1__* bus; } ;
struct TYPE_5__ {int (* basic_trap_groups_set ) (struct mlxsw_core*) ;} ;
struct TYPE_4__ {int features; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MLXSW_BUS_F_TXRX ; 
 struct workqueue_struct* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int FUNC5 (struct mlxsw_core*,int /*<<< orphan*/ *,struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_core*,int /*<<< orphan*/ *,struct mlxsw_core*) ; 
 int /*<<< orphan*/  mlxsw_emad_rx_listener ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct mlxsw_core*) ; 

__attribute__((used)) static int FUNC9(struct mlxsw_core *mlxsw_core)
{
	struct workqueue_struct *emad_wq;
	u64 tid;
	int err;

	if (!(mlxsw_core->bus->features & MLXSW_BUS_F_TXRX))
		return 0;

	emad_wq = FUNC1("mlxsw_core_emad", 0, 0);
	if (!emad_wq)
		return -ENOMEM;
	mlxsw_core->emad_wq = emad_wq;

	/* Set the upper 32 bits of the transaction ID field to a random
	 * number. This allows us to discard EMADs addressed to other
	 * devices.
	 */
	FUNC4(&tid, 4);
	tid <<= 32;
	FUNC2(&mlxsw_core->emad.tid, tid);

	FUNC0(&mlxsw_core->emad.trans_list);
	FUNC7(&mlxsw_core->emad.trans_list_lock);

	err = FUNC5(mlxsw_core, &mlxsw_emad_rx_listener,
				       mlxsw_core);
	if (err)
		return err;

	err = mlxsw_core->driver->basic_trap_groups_set(mlxsw_core);
	if (err)
		goto err_emad_trap_set;
	mlxsw_core->emad.use_emad = true;

	return 0;

err_emad_trap_set:
	FUNC6(mlxsw_core, &mlxsw_emad_rx_listener,
				   mlxsw_core);
	FUNC3(mlxsw_core->emad_wq);
	return err;
}