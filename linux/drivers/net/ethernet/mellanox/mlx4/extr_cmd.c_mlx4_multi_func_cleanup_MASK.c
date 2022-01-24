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
struct TYPE_4__ {TYPE_3__* vf_oper; TYPE_3__* vf_admin; TYPE_3__* slave_state; int /*<<< orphan*/  comm_wq; } ;
struct TYPE_5__ {int /*<<< orphan*/ * comm; TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_dev {int num_slaves; } ;
struct TYPE_6__ {struct TYPE_6__** vlan_filter; } ;

/* Variables and functions */
 int MLX4_MAX_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC5 (struct mlx4_dev*) ; 

void FUNC6(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC5(dev);
	int i, port;

	if (FUNC4(dev)) {
		FUNC1(priv->mfunc.master.comm_wq);
		FUNC0(priv->mfunc.master.comm_wq);
		for (i = 0; i < dev->num_slaves; i++) {
			for (port = 1; port <= MLX4_MAX_PORTS; port++)
				FUNC3(priv->mfunc.master.slave_state[i].vlan_filter[port]);
		}
		FUNC3(priv->mfunc.master.slave_state);
		FUNC3(priv->mfunc.master.vf_admin);
		FUNC3(priv->mfunc.master.vf_oper);
		dev->num_slaves = 0;
	}

	FUNC2(priv->mfunc.comm);
	priv->mfunc.comm = NULL;
}