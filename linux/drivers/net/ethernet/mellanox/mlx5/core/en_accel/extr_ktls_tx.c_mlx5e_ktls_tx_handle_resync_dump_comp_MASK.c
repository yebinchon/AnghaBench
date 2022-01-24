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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_txqsq {int /*<<< orphan*/  pdev; struct mlx5e_sq_stats* stats; } ;
struct mlx5e_tx_wqe_info {scalar_t__ num_bytes; int /*<<< orphan*/  resync_dump_frag_page; } ;
struct mlx5e_sq_stats {int /*<<< orphan*/  tls_dump_bytes; int /*<<< orphan*/  tls_dump_packets; } ;
struct mlx5e_sq_dma {int dummy; } ;

/* Variables and functions */
 struct mlx5e_sq_dma* FUNC0 (struct mlx5e_txqsq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mlx5e_sq_dma*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct mlx5e_txqsq *sq,
					   struct mlx5e_tx_wqe_info *wi,
					   u32 *dma_fifo_cc)
{
	struct mlx5e_sq_stats *stats;
	struct mlx5e_sq_dma *dma;

	if (!wi->resync_dump_frag_page)
		return;

	dma = FUNC0(sq, (*dma_fifo_cc)++);
	stats = sq->stats;

	FUNC1(sq->pdev, dma);
	FUNC2(wi->resync_dump_frag_page);
	stats->tls_dump_packets++;
	stats->tls_dump_bytes += wi->num_bytes;
}