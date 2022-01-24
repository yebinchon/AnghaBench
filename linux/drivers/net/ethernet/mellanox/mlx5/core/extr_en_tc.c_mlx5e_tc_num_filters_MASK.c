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
struct rhashtable {int /*<<< orphan*/  nelems; } ;
struct mlx5e_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct rhashtable* FUNC1 (struct mlx5e_priv*,unsigned long) ; 

int FUNC2(struct mlx5e_priv *priv, unsigned long flags)
{
	struct rhashtable *tc_ht = FUNC1(priv, flags);

	return FUNC0(&tc_ht->nelems);
}