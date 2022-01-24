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
struct neighbour {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  wq; } ;
struct mlx5e_neigh_hash_entry {int /*<<< orphan*/  neigh_update_work; struct neighbour* n; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_neigh_hash_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC2 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mlx5e_priv *priv,
				  struct mlx5e_neigh_hash_entry *nhe,
				  struct neighbour *n)
{
	/* Take a reference to ensure the neighbour and mlx5 encap
	 * entry won't be destructed until we drop the reference in
	 * delayed work.
	 */
	FUNC1(n);

	/* This assignment is valid as long as the the neigh reference
	 * is taken
	 */
	nhe->n = n;

	if (!FUNC3(priv->wq, &nhe->neigh_update_work)) {
		FUNC0(nhe);
		FUNC2(n);
	}
}