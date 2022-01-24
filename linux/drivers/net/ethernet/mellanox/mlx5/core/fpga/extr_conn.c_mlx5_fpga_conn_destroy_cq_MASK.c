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
struct TYPE_4__ {int /*<<< orphan*/  wq_ctrl; int /*<<< orphan*/  mcq; int /*<<< orphan*/  tasklet; } ;
struct mlx5_fpga_conn {TYPE_2__ cq; TYPE_1__* fdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mlx5_fpga_conn *conn)
{
	FUNC2(&conn->cq.tasklet);
	FUNC3(&conn->cq.tasklet);
	FUNC0(conn->fdev->mdev, &conn->cq.mcq);
	FUNC1(&conn->cq.wq_ctrl);
}