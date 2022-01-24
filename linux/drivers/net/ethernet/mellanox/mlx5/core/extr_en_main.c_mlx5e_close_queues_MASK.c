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
struct TYPE_6__ {int /*<<< orphan*/  cq; } ;
struct TYPE_4__ {int /*<<< orphan*/  cq; } ;
struct TYPE_5__ {int /*<<< orphan*/  cq; } ;
struct mlx5e_channel {TYPE_3__ icosq; TYPE_1__ xdpsq; TYPE_2__ rq; TYPE_1__ rq_xdpsq; scalar_t__ xdp; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mlx5e_channel *c)
{
	FUNC5(&c->xdpsq);
	FUNC2(&c->rq);
	if (c->xdp)
		FUNC5(&c->rq_xdpsq);
	FUNC3(c);
	FUNC1(&c->icosq);
	FUNC6(&c->napi);
	if (c->xdp)
		FUNC0(&c->rq_xdpsq.cq);
	FUNC0(&c->rq.cq);
	FUNC0(&c->xdpsq.cq);
	FUNC4(c);
	FUNC0(&c->icosq.cq);
}