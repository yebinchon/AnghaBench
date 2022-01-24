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
struct offloads_fdb {scalar_t__ vlan_push_pop_refcount; } ;
struct mlx5_eswitch_rep {int /*<<< orphan*/  vport; scalar_t__ vlan; scalar_t__ vlan_refcount; } ;
struct TYPE_4__ {struct offloads_fdb offloads; } ;
struct mlx5_eswitch {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  dev; TYPE_1__ fdb_table; } ;
struct mlx5_esw_flow_attr {int action; TYPE_3__* dests; int /*<<< orphan*/  vlan_handled; } ;
struct TYPE_6__ {TYPE_2__* rep; } ;
struct TYPE_5__ {scalar_t__ vport; } ;

/* Variables and functions */
 int MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ; 
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_POP ; 
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH ; 
 scalar_t__ MLX5_VPORT_UPLINK ; 
 int /*<<< orphan*/  SET_VLAN_STRIP ; 
 int FUNC0 (struct mlx5_eswitch*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 
 struct mlx5_eswitch_rep* FUNC2 (struct mlx5_esw_flow_attr*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct mlx5_eswitch *esw,
				 struct mlx5_esw_flow_attr *attr)
{
	struct offloads_fdb *offloads = &esw->fdb_table.offloads;
	struct mlx5_eswitch_rep *vport = NULL;
	bool push, pop, fwd;
	int err = 0;

	/* nop if we're on the vlan push/pop non emulation mode */
	if (FUNC3(esw->dev, 1))
		return 0;

	if (!attr->vlan_handled)
		return 0;

	push = !!(attr->action & MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH);
	pop  = !!(attr->action & MLX5_FLOW_CONTEXT_ACTION_VLAN_POP);
	fwd  = !!(attr->action & MLX5_FLOW_CONTEXT_ACTION_FWD_DEST);

	FUNC4(&esw->state_lock);

	vport = FUNC2(attr, push, pop);

	if (!push && !pop && fwd) {
		/* tracks VF --> wire rules without vlan push action */
		if (attr->dests[0].rep->vport == MLX5_VPORT_UPLINK)
			vport->vlan_refcount--;

		goto out;
	}

	if (push) {
		vport->vlan_refcount--;
		if (vport->vlan_refcount)
			goto skip_unset_push;

		vport->vlan = 0;
		err = FUNC0(esw, vport->vport,
						    0, 0, SET_VLAN_STRIP);
		if (err)
			goto out;
	}

skip_unset_push:
	offloads->vlan_push_pop_refcount--;
	if (offloads->vlan_push_pop_refcount)
		goto out;

	/* no more vlan rules, stop global vlan pop policy */
	err = FUNC1(esw, 0);

out:
	FUNC5(&esw->state_lock);
	return err;
}