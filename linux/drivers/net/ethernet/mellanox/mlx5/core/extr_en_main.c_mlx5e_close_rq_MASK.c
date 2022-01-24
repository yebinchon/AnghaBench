#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct mlx5e_rq {int /*<<< orphan*/  recover_work; TYPE_3__* channel; TYPE_1__ dim; } ;
struct TYPE_5__ {int /*<<< orphan*/  recover_work; } ;
struct TYPE_6__ {TYPE_2__ icosq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_rq*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_rq*) ; 

void FUNC4(struct mlx5e_rq *rq)
{
	FUNC0(&rq->dim.work);
	FUNC0(&rq->channel->icosq.recover_work);
	FUNC0(&rq->recover_work);
	FUNC1(rq);
	FUNC3(rq);
	FUNC2(rq);
}