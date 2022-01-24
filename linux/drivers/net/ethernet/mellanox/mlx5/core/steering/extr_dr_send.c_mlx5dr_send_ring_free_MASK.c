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
struct mlx5dr_send_ring {struct mlx5dr_send_ring* buf; int /*<<< orphan*/  mr; int /*<<< orphan*/  sync_mr; int /*<<< orphan*/  cq; int /*<<< orphan*/  qp; } ;
struct mlx5dr_domain {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_send_ring*) ; 

void FUNC4(struct mlx5dr_domain *dmn,
			   struct mlx5dr_send_ring *send_ring)
{
	FUNC2(dmn->mdev, send_ring->qp);
	FUNC1(dmn->mdev, send_ring->cq);
	FUNC0(dmn->mdev, send_ring->sync_mr);
	FUNC0(dmn->mdev, send_ring->mr);
	FUNC3(send_ring->buf);
	FUNC3(send_ring);
}