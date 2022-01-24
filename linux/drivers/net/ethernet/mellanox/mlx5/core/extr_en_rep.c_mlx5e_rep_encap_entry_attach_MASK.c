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
struct TYPE_2__ {int /*<<< orphan*/  encap_lock; } ;
struct mlx5_tun_entropy {int dummy; } ;
struct mlx5_rep_uplink_priv {struct mlx5_tun_entropy tun_entropy; } ;
struct mlx5e_rep_priv {TYPE_1__ neigh_update; struct mlx5_rep_uplink_priv uplink_priv; } ;
struct mlx5e_priv {struct mlx5e_rep_priv* ppriv; } ;
struct mlx5e_neigh_hash_entry {int /*<<< orphan*/  encap_list_lock; int /*<<< orphan*/  encap_list; } ;
struct mlx5e_encap_entry {int /*<<< orphan*/  encap_list; struct mlx5e_neigh_hash_entry* nhe; int /*<<< orphan*/  reformat_type; int /*<<< orphan*/  m_neigh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_tun_entropy*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_tun_entropy*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5e_priv*,struct mlx5e_encap_entry*,struct mlx5e_neigh_hash_entry**) ; 
 struct mlx5e_neigh_hash_entry* FUNC4 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct mlx5e_priv *priv,
				 struct mlx5e_encap_entry *e)
{
	struct mlx5e_rep_priv *rpriv = priv->ppriv;
	struct mlx5_rep_uplink_priv *uplink_priv = &rpriv->uplink_priv;
	struct mlx5_tun_entropy *tun_entropy = &uplink_priv->tun_entropy;
	struct mlx5e_neigh_hash_entry *nhe;
	int err;

	err = FUNC2(tun_entropy, e->reformat_type);
	if (err)
		return err;

	FUNC5(&rpriv->neigh_update.encap_lock);
	nhe = FUNC4(priv, &e->m_neigh);
	if (!nhe) {
		err = FUNC3(priv, e, &nhe);
		if (err) {
			FUNC6(&rpriv->neigh_update.encap_lock);
			FUNC1(tun_entropy,
						      e->reformat_type);
			return err;
		}
	}

	e->nhe = nhe;
	FUNC7(&nhe->encap_list_lock);
	FUNC0(&e->encap_list, &nhe->encap_list);
	FUNC8(&nhe->encap_list_lock);

	FUNC6(&rpriv->neigh_update.encap_lock);

	return 0;
}