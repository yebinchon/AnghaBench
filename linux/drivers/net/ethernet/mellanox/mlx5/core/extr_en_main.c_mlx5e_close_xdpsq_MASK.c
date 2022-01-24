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
struct mlx5e_xdpsq {int /*<<< orphan*/  sqn; int /*<<< orphan*/  state; struct mlx5e_channel* channel; } ;
struct mlx5e_channel {int /*<<< orphan*/  mdev; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_SQ_STATE_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_xdpsq*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_xdpsq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx5e_xdpsq *sq)
{
	struct mlx5e_channel *c = sq->channel;

	FUNC0(MLX5E_SQ_STATE_ENABLED, &sq->state);
	FUNC4(&c->napi);

	FUNC1(c->mdev, sq->sqn);
	FUNC3(sq);
	FUNC2(sq);
}