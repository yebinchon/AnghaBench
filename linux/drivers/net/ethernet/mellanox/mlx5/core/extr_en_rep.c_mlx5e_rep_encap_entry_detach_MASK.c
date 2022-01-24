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
struct mlx5_tun_entropy {int dummy; } ;
struct mlx5_rep_uplink_priv {struct mlx5_tun_entropy tun_entropy; } ;
struct mlx5e_rep_priv {struct mlx5_rep_uplink_priv uplink_priv; } ;
struct mlx5e_priv {struct mlx5e_rep_priv* ppriv; } ;
struct mlx5e_encap_entry {int /*<<< orphan*/  reformat_type; TYPE_1__* nhe; int /*<<< orphan*/  encap_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  encap_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_tun_entropy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx5e_priv *priv,
				  struct mlx5e_encap_entry *e)
{
	struct mlx5e_rep_priv *rpriv = priv->ppriv;
	struct mlx5_rep_uplink_priv *uplink_priv = &rpriv->uplink_priv;
	struct mlx5_tun_entropy *tun_entropy = &uplink_priv->tun_entropy;

	if (!e->nhe)
		return;

	FUNC3(&e->nhe->encap_list_lock);
	FUNC0(&e->encap_list);
	FUNC4(&e->nhe->encap_list_lock);

	FUNC2(e->nhe);
	e->nhe = NULL;
	FUNC1(tun_entropy, e->reformat_type);
}