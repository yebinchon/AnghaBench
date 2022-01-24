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
struct mlx5e_priv {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_STATE_XDP_OPEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC1(struct mlx5e_priv *priv)
{
	return FUNC0(MLX5E_STATE_XDP_OPEN, &priv->state);
}