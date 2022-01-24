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
typedef  scalar_t__ u16 ;
struct mlx5_vport {scalar_t__ vport; int enabled; scalar_t__ enabled_events; } ;
struct mlx5_eswitch {scalar_t__ manager_vport; scalar_t__ mode; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  enabled_vports; int /*<<< orphan*/  dev; int /*<<< orphan*/  work_queue; } ;

/* Variables and functions */
 scalar_t__ MLX5_ESWITCH_LEGACY ; 
 int /*<<< orphan*/  MLX5_VPORT_ADMIN_STATE_DOWN ; 
 int /*<<< orphan*/  MLX5_VPORT_STATE_OP_MOD_ESW_VPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct mlx5_eswitch *esw,
			      struct mlx5_vport *vport)
{
	u16 vport_num = vport->vport;

	if (!vport->enabled)
		return;

	FUNC1(esw->dev, "Disabling vport(%d)\n", vport_num);
	/* Mark this vport as disabled to discard new events */
	vport->enabled = false;

	/* Wait for current already scheduled events to complete */
	FUNC7(esw->work_queue);
	/* Disable events from this vport */
	FUNC0(esw->dev, vport->vport, 0);
	FUNC9(&esw->state_lock);
	/* We don't assume VFs will cleanup after themselves.
	 * Calling vport change handler while vport is disabled will cleanup
	 * the vport resources.
	 */
	FUNC2(vport);
	vport->enabled_events = 0;
	FUNC6(esw, vport);
	if (esw->manager_vport != vport_num &&
	    esw->mode == MLX5_ESWITCH_LEGACY) {
		FUNC8(esw->dev,
					      MLX5_VPORT_STATE_OP_MOD_ESW_VPORT,
					      vport_num, 1,
					      MLX5_VPORT_ADMIN_STATE_DOWN);
		FUNC4(esw, vport);
		FUNC5(esw, vport);
		FUNC3(vport);
	}
	esw->enabled_vports--;
	FUNC10(&esw->state_lock);
}