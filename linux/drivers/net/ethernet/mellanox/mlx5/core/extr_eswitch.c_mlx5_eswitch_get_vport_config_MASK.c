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
struct TYPE_2__ {int /*<<< orphan*/  max_rate; int /*<<< orphan*/  min_rate; int /*<<< orphan*/  trusted; int /*<<< orphan*/  spoofchk; int /*<<< orphan*/  qos; int /*<<< orphan*/  vlan; int /*<<< orphan*/  link_state; int /*<<< orphan*/  mac; } ;
struct mlx5_vport {TYPE_1__ info; } ;
struct mlx5_eswitch {int /*<<< orphan*/  state_lock; } ;
struct ifla_vf_info {int /*<<< orphan*/  max_tx_rate; int /*<<< orphan*/  min_tx_rate; int /*<<< orphan*/  trusted; int /*<<< orphan*/  spoofchk; int /*<<< orphan*/  qos; int /*<<< orphan*/  vlan; int /*<<< orphan*/  linkstate; int /*<<< orphan*/  mac; scalar_t__ vf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_vport*) ; 
 int FUNC1 (struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ifla_vf_info*,int /*<<< orphan*/ ,int) ; 
 struct mlx5_vport* FUNC4 (struct mlx5_eswitch*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct mlx5_eswitch *esw,
				  u16 vport, struct ifla_vf_info *ivi)
{
	struct mlx5_vport *evport = FUNC4(esw, vport);

	if (FUNC0(evport))
		return FUNC1(evport);

	FUNC3(ivi, 0, sizeof(*ivi));
	ivi->vf = vport - 1;

	FUNC5(&esw->state_lock);
	FUNC2(ivi->mac, evport->info.mac);
	ivi->linkstate = evport->info.link_state;
	ivi->vlan = evport->info.vlan;
	ivi->qos = evport->info.qos;
	ivi->spoofchk = evport->info.spoofchk;
	ivi->trusted = evport->info.trusted;
	ivi->min_tx_rate = evport->info.min_rate;
	ivi->max_tx_rate = evport->info.max_rate;
	FUNC6(&esw->state_lock);

	return 0;
}