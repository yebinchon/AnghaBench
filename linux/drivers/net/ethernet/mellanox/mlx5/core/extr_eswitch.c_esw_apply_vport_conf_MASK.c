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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  qos; int /*<<< orphan*/  vlan; int /*<<< orphan*/  node_guid; int /*<<< orphan*/  mac; int /*<<< orphan*/  link_state; } ;
struct mlx5_vport {scalar_t__ vport; TYPE_1__ info; } ;
struct mlx5_eswitch {scalar_t__ manager_vport; scalar_t__ mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MLX5_ESWITCH_LEGACY ; 
 int /*<<< orphan*/  MLX5_VPORT_STATE_OP_MOD_ESW_VPORT ; 
 int SET_VLAN_INSERT ; 
 int SET_VLAN_STRIP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct mlx5_eswitch *esw,
				 struct mlx5_vport *vport)
{
	u16 vport_num = vport->vport;
	int flags;

	if (esw->manager_vport == vport_num)
		return;

	FUNC4(esw->dev,
				      MLX5_VPORT_STATE_OP_MOD_ESW_VPORT,
				      vport_num, 1,
				      vport->info.link_state);

	/* Host PF has its own mac/guid. */
	if (vport_num) {
		FUNC2(esw->dev, vport_num,
						  vport->info.mac);
		FUNC3(esw->dev, vport_num,
						vport->info.node_guid);
	}

	flags = (vport->info.vlan || vport->info.qos) ?
		SET_VLAN_STRIP | SET_VLAN_INSERT : 0;
	FUNC5(esw->dev, vport_num, vport->info.vlan, vport->info.qos,
			       flags);

	/* Only legacy mode needs ACLs */
	if (esw->mode == MLX5_ESWITCH_LEGACY) {
		FUNC1(esw, vport);
		FUNC0(esw, vport);
	}
}