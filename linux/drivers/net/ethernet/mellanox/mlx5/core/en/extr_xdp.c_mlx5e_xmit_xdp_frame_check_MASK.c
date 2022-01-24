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
struct mlx5e_xdpsq {TYPE_1__* stats; int /*<<< orphan*/  pc; int /*<<< orphan*/  cc; int /*<<< orphan*/  wq; } ;
struct TYPE_2__ {int /*<<< orphan*/  full; } ;

/* Variables and functions */
 int EBUSY ; 
 int MLX5E_XDP_CHECK_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_xdpsq*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct mlx5e_xdpsq *sq)
{
	if (FUNC2(!FUNC0(&sq->wq, sq->cc, sq->pc, 1))) {
		/* SQ is full, ring doorbell */
		FUNC1(sq);
		sq->stats->full++;
		return -EBUSY;
	}

	return MLX5E_XDP_CHECK_OK;
}