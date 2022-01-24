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
struct mlx5e_icosq {int /*<<< orphan*/  state; struct mlx5e_channel* channel; } ;
struct mlx5e_channel {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_SQ_STATE_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct mlx5e_icosq *icosq)
{
	struct mlx5e_channel *c = icosq->channel;

	FUNC0(MLX5E_SQ_STATE_ENABLED, &icosq->state);
	FUNC1(&c->napi);
}