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
struct TYPE_4__ {int /*<<< orphan*/  cq; } ;
struct TYPE_6__ {int /*<<< orphan*/  cq; } ;
struct TYPE_5__ {int /*<<< orphan*/  cq; } ;
struct mlx5e_channel {TYPE_1__ xsksq; TYPE_3__ xskicosq; TYPE_2__ xskrq; int /*<<< orphan*/  napi; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_CHANNEL_STATE_XSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct mlx5e_channel *c)
{
	FUNC0(MLX5E_CHANNEL_STATE_XSK, c->state);
	FUNC5(&c->napi);

	FUNC3(&c->xskrq);
	FUNC1(&c->xskrq.cq);
	FUNC2(&c->xskicosq);
	FUNC1(&c->xskicosq.cq);
	FUNC4(&c->xsksq);
	FUNC1(&c->xsksq.cq);
}