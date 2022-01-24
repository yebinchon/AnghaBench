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
struct TYPE_2__ {int /*<<< orphan*/  event_ctr; } ;
struct mlx5e_txqsq {int /*<<< orphan*/  dim; TYPE_1__ cq; int /*<<< orphan*/  state; struct mlx5e_sq_stats* stats; } ;
struct mlx5e_sq_stats {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;
struct dim_sample {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_SQ_STATE_AM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dim_sample*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct dim_sample) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct mlx5e_txqsq *sq)
{
	struct mlx5e_sq_stats *stats = sq->stats;
	struct dim_sample dim_sample = {};

	if (FUNC3(!FUNC2(MLX5E_SQ_STATE_AM, &sq->state)))
		return;

	FUNC0(sq->cq.event_ctr, stats->packets, stats->bytes, &dim_sample);
	FUNC1(&sq->dim, dim_sample);
}