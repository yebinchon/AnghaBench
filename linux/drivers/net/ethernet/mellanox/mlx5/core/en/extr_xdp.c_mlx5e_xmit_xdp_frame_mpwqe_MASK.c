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
struct mlx5e_xdpsq_stats {int /*<<< orphan*/  xmit; int /*<<< orphan*/  err; } ;
struct TYPE_2__ {int /*<<< orphan*/  xdpi_fifo; } ;
struct mlx5e_xdp_mpwqe {scalar_t__ ds_count; } ;
struct mlx5e_xdpsq {scalar_t__ hw_mtu; TYPE_1__ db; struct mlx5e_xdpsq_stats* stats; struct mlx5e_xdp_mpwqe mpwqe; } ;
struct mlx5e_xdp_xmit_data {scalar_t__ len; } ;
struct mlx5e_xdp_info {int dummy; } ;

/* Variables and functions */
 int MLX5E_XDP_CHECK_START_MPWQE ; 
 scalar_t__ MLX5E_XDP_MPW_MAX_NUM_DS ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_xdpsq*,struct mlx5e_xdp_xmit_data*,struct mlx5e_xdpsq_stats*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_xdpsq*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_xdpsq*) ; 
 scalar_t__ FUNC3 (struct mlx5e_xdp_mpwqe*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mlx5e_xdp_info*) ; 
 int FUNC5 (struct mlx5e_xdpsq*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static bool FUNC7(struct mlx5e_xdpsq *sq,
				       struct mlx5e_xdp_xmit_data *xdptxd,
				       struct mlx5e_xdp_info *xdpi,
				       int check_result)
{
	struct mlx5e_xdp_mpwqe *session = &sq->mpwqe;
	struct mlx5e_xdpsq_stats *stats = sq->stats;

	if (FUNC6(xdptxd->len > sq->hw_mtu)) {
		stats->err++;
		return false;
	}

	if (!check_result)
		check_result = FUNC5(sq);
	if (FUNC6(check_result < 0))
		return false;

	if (check_result == MLX5E_XDP_CHECK_START_MPWQE) {
		/* Start the session when nothing can fail, so it's guaranteed
		 * that if there is an active session, it has at least one dseg,
		 * and it's safe to complete it at any time.
		 */
		FUNC2(sq);
	}

	FUNC0(sq, xdptxd, stats);

	if (FUNC6(FUNC3(session) ||
		     session->ds_count == MLX5E_XDP_MPW_MAX_NUM_DS))
		FUNC1(sq);

	FUNC4(&sq->db.xdpi_fifo, xdpi);
	stats->xmit++;
	return true;
}