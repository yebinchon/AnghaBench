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
struct mlx5e_priv {int /*<<< orphan*/  channels; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct mlx5e_priv *priv)
{
	FUNC5(priv, &priv->channels);

	FUNC2(priv);

	if (FUNC1(priv))
		FUNC3(priv);

	/* FIXME: This is a W/A only for tx timeout watch dog false alarm when
	 * polling for inactive tx queues.
	 */
	FUNC7(priv->netdev);
	FUNC6(priv->netdev);
	FUNC4(priv);
	FUNC0(&priv->channels);
}