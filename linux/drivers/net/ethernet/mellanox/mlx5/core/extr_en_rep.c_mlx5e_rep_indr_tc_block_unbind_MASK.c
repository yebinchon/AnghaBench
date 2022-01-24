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
struct mlx5e_rep_indr_block_priv {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_rep_indr_block_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *cb_priv)
{
	struct mlx5e_rep_indr_block_priv *indr_priv = cb_priv;

	FUNC1(&indr_priv->list);
	FUNC0(indr_priv);
}