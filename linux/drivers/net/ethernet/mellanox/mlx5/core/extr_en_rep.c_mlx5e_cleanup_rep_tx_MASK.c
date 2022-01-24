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
struct TYPE_4__ {int /*<<< orphan*/  unready_flows_lock; int /*<<< orphan*/  tc_ht; int /*<<< orphan*/  netdevice_nb; } ;
struct mlx5e_rep_priv {TYPE_2__ uplink_priv; TYPE_1__* rep; } ;
struct mlx5e_priv {struct mlx5e_rep_priv* ppriv; } ;
struct TYPE_3__ {scalar_t__ vport; } ;

/* Variables and functions */
 scalar_t__ MLX5_VPORT_UPLINK ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_rep_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mlx5e_priv *priv)
{
	struct mlx5e_rep_priv *rpriv = priv->ppriv;

	FUNC0(priv);

	if (rpriv->rep->vport == MLX5_VPORT_UPLINK) {
		/* clean indirect TC block notifications */
		FUNC4(&rpriv->uplink_priv.netdevice_nb);
		FUNC1(rpriv);

		/* delete shared tc flow table */
		FUNC2(&rpriv->uplink_priv.tc_ht);
		FUNC3(&rpriv->uplink_priv.unready_flows_lock);
	}
}