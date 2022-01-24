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
typedef  scalar_t__ u16 ;
struct mlx5_wq_cyc {int dummy; } ;
struct mlx5e_txqsq {int /*<<< orphan*/  pc; struct mlx5_wq_cyc wq; } ;
struct mlx5e_ktls_offload_context_tx {int dummy; } ;

/* Variables and functions */
 scalar_t__ MLX5E_KTLS_PROGRESS_WQEBBS ; 
 scalar_t__ MLX5E_KTLS_STATIC_WQEBBS ; 
 scalar_t__ FUNC0 (struct mlx5_wq_cyc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx5_wq_cyc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_txqsq*,struct mlx5_wq_cyc*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_txqsq*,struct mlx5e_ktls_offload_context_tx*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_txqsq*,struct mlx5e_ktls_offload_context_tx*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct mlx5e_txqsq *sq,
			      struct mlx5e_ktls_offload_context_tx *priv_tx,
			      bool skip_static_post, bool fence_first_post)
{
	bool progress_fence = skip_static_post || !fence_first_post;
	struct mlx5_wq_cyc *wq = &sq->wq;
	u16 contig_wqebbs_room, pi;

	pi = FUNC0(wq, sq->pc);
	contig_wqebbs_room = FUNC1(wq, pi);
	if (FUNC5(contig_wqebbs_room <
		     MLX5E_KTLS_STATIC_WQEBBS + MLX5E_KTLS_PROGRESS_WQEBBS))
		FUNC2(sq, wq, pi, contig_wqebbs_room);

	if (!skip_static_post)
		FUNC4(sq, priv_tx, fence_first_post);

	FUNC3(sq, priv_tx, progress_fence);
}