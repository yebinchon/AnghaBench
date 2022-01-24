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
struct mlx5e_priv {int dummy; } ;
struct mlx5e_neigh_hash_entry {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  encap_list; int /*<<< orphan*/  encap_list_lock; int /*<<< orphan*/  neigh_update_work; int /*<<< orphan*/  m_neigh; struct mlx5e_priv* priv; } ;
struct mlx5e_encap_entry {int /*<<< orphan*/  m_neigh; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_neigh_hash_entry*) ; 
 struct mlx5e_neigh_hash_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct mlx5e_priv*,struct mlx5e_neigh_hash_entry*) ; 
 int /*<<< orphan*/  mlx5e_rep_neigh_update ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct mlx5e_priv *priv,
					struct mlx5e_encap_entry *e,
					struct mlx5e_neigh_hash_entry **nhe)
{
	int err;

	*nhe = FUNC3(sizeof(**nhe), GFP_KERNEL);
	if (!*nhe)
		return -ENOMEM;

	(*nhe)->priv = priv;
	FUNC4(&(*nhe)->m_neigh, &e->m_neigh, sizeof(e->m_neigh));
	FUNC1(&(*nhe)->neigh_update_work, mlx5e_rep_neigh_update);
	FUNC7(&(*nhe)->encap_list_lock);
	FUNC0(&(*nhe)->encap_list);
	FUNC6(&(*nhe)->refcnt, 1);

	err = FUNC5(priv, *nhe);
	if (err)
		goto out_free;
	return 0;

out_free:
	FUNC2(*nhe);
	return err;
}