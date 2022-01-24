#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  wqe; } ;
struct mlx5e_xdpsq {TYPE_2__* stats; int /*<<< orphan*/  pc; int /*<<< orphan*/  cc; int /*<<< orphan*/  wq; TYPE_1__ mpwqe; } ;
struct TYPE_4__ {int /*<<< orphan*/  full; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MLX5E_XDPSQ_STOP_ROOM ; 
 int MLX5E_XDP_CHECK_OK ; 
 int MLX5E_XDP_CHECK_START_MPWQE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_xdpsq*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct mlx5e_xdpsq *sq)
{
	if (FUNC2(!sq->mpwqe.wqe)) {
		if (FUNC2(!FUNC0(&sq->wq, sq->cc, sq->pc,
						     MLX5E_XDPSQ_STOP_ROOM))) {
			/* SQ is full, ring doorbell */
			FUNC1(sq);
			sq->stats->full++;
			return -EBUSY;
		}

		return MLX5E_XDP_CHECK_START_MPWQE;
	}

	return MLX5E_XDP_CHECK_OK;
}