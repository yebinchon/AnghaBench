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
struct mlx5_vport {int /*<<< orphan*/ * promisc_rule; int /*<<< orphan*/  vport; int /*<<< orphan*/ * allmulti_rule; } ;
struct esw_mc_addr {scalar_t__ refcnt; int /*<<< orphan*/ * uplink_rule; } ;
struct mlx5_eswitch {struct esw_mc_addr mc_promisc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX5_VPORT_UPLINK ; 
 void* FUNC1 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mlx5_eswitch *esw,
				    struct mlx5_vport *vport,
				    bool promisc, bool mc_promisc)
{
	struct esw_mc_addr *allmulti_addr = &esw->mc_promisc;

	if (FUNC0(vport->allmulti_rule) != mc_promisc)
		goto promisc;

	if (mc_promisc) {
		vport->allmulti_rule =
			FUNC1(esw, vport->vport);
		if (!allmulti_addr->uplink_rule)
			allmulti_addr->uplink_rule =
				FUNC1(esw,
								MLX5_VPORT_UPLINK);
		allmulti_addr->refcnt++;
	} else if (vport->allmulti_rule) {
		FUNC3(vport->allmulti_rule);
		vport->allmulti_rule = NULL;

		if (--allmulti_addr->refcnt > 0)
			goto promisc;

		if (allmulti_addr->uplink_rule)
			FUNC3(allmulti_addr->uplink_rule);
		allmulti_addr->uplink_rule = NULL;
	}

promisc:
	if (FUNC0(vport->promisc_rule) != promisc)
		return;

	if (promisc) {
		vport->promisc_rule =
			FUNC2(esw, vport->vport);
	} else if (vport->promisc_rule) {
		FUNC3(vport->promisc_rule);
		vport->promisc_rule = NULL;
	}
}