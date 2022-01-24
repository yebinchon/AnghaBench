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
typedef  scalar_t__ u16 ;
struct TYPE_4__ {int trusted; int /*<<< orphan*/  max_rate; } ;
struct TYPE_3__ {int /*<<< orphan*/  bw_share; } ;
struct mlx5_vport {scalar_t__ vport; int enabled; int enabled_events; TYPE_2__ info; TYPE_1__ qos; } ;
struct mlx5_eswitch {scalar_t__ mode; scalar_t__ manager_vport; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  enabled_vports; } ;
typedef  enum mlx5_eswitch_vport_event { ____Placeholder_mlx5_eswitch_vport_event } mlx5_eswitch_vport_event ;

/* Variables and functions */
 scalar_t__ MLX5_ESWITCH_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_vport*) ; 
 scalar_t__ FUNC5 (struct mlx5_eswitch*,struct mlx5_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct mlx5_eswitch *esw, struct mlx5_vport *vport,
			     enum mlx5_eswitch_vport_event enabled_events)
{
	u16 vport_num = vport->vport;

	FUNC8(&esw->state_lock);
	FUNC0(vport->enabled);

	FUNC2(esw->dev, "Enabling VPORT(%d)\n", vport_num);

	/* Create steering drop counters for ingress and egress ACLs */
	if (vport_num && esw->mode == MLX5_ESWITCH_LEGACY)
		FUNC4(vport);

	/* Restore old vport configuration */
	FUNC1(esw, vport);

	/* Attach vport to the eswitch rate limiter */
	if (FUNC5(esw, vport, vport->info.max_rate,
				 vport->qos.bw_share))
		FUNC6(esw->dev, "Failed to attach vport %d to eswitch rate limiter", vport_num);

	/* Sync with current vport context */
	vport->enabled_events = enabled_events;
	vport->enabled = true;

	/* Esw manager is trusted by default. Host PF (vport 0) is trusted as well
	 * in smartNIC as it's a vport group manager.
	 */
	if (esw->manager_vport == vport_num ||
	    (!vport_num && FUNC7(esw->dev)))
		vport->info.trusted = true;

	FUNC3(vport);

	esw->enabled_vports++;
	FUNC2(esw->dev, "Enabled VPORT(%d)\n", vport_num);
	FUNC9(&esw->state_lock);
}