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
struct mlx5e_priv {scalar_t__ drop_rq_q_counter; int /*<<< orphan*/  mdev; scalar_t__ q_counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC1(struct mlx5e_priv *priv)
{
	if (priv->q_counter)
		FUNC0(priv->mdev, priv->q_counter);

	if (priv->drop_rq_q_counter)
		FUNC0(priv->mdev, priv->drop_rq_q_counter);
}