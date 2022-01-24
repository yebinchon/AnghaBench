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
struct mlx5e_xdpsq {int dummy; } ;
struct mlx5e_rq {int (* post_wqes ) (struct mlx5e_rq*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_TX_XSK_POLL_BUDGET ; 
 int FUNC0 (struct mlx5e_xdpsq*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5e_rq*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_xdpsq*) ; 
 int FUNC3 (struct mlx5e_rq*) ; 

__attribute__((used)) static bool FUNC4(struct mlx5e_xdpsq *xsksq, struct mlx5e_rq *xskrq)
{
	bool busy_xsk = false, xsk_rx_alloc_err;

	/* Handle the race between the application querying need_wakeup and the
	 * driver setting it:
	 * 1. Update need_wakeup both before and after the TX. If it goes to
	 * "yes", it can only happen with the first update.
	 * 2. If the application queried need_wakeup before we set it, the
	 * packets will be transmitted anyway, even w/o a wakeup.
	 * 3. Give a chance to clear need_wakeup after new packets were queued
	 * for TX.
	 */
	FUNC2(xsksq);
	busy_xsk |= FUNC0(xsksq, MLX5E_TX_XSK_POLL_BUDGET);
	FUNC2(xsksq);

	xsk_rx_alloc_err = xskrq->post_wqes(xskrq);
	busy_xsk |= FUNC1(xskrq, xsk_rx_alloc_err);

	return busy_xsk;
}