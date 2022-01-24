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
struct mlx5e_rq {int /*<<< orphan*/  rqn; int /*<<< orphan*/  wq_type; struct mlx5e_channel* channel; } ;
struct mlx5e_channel {int /*<<< orphan*/  ix; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_rq*) ; 
 scalar_t__ FUNC2 (struct mlx5e_rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_rq*) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

int FUNC8(struct mlx5e_rq *rq, int wait_time)
{
	unsigned long exp_time = jiffies + FUNC4(wait_time);
	struct mlx5e_channel *c = rq->channel;

	u16 min_wqes = FUNC0(rq->wq_type, FUNC3(rq));

	do {
		if (FUNC2(rq) >= min_wqes)
			return 0;

		FUNC5(20);
	} while (FUNC7(jiffies, exp_time));

	FUNC6(c->netdev, "Failed to get min RX wqes on Channel[%d] RQN[0x%x] wq cur_sz(%d) min_rx_wqes(%d)\n",
		    c->ix, rq->rqn, FUNC2(rq), min_wqes);

	FUNC1(rq);
	return -ETIMEDOUT;
}