#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_tc_flow {TYPE_5__* peer_flow; int /*<<< orphan*/  peer; TYPE_4__* priv; } ;
struct TYPE_7__ {int /*<<< orphan*/  peer_mutex; } ;
struct mlx5_eswitch {TYPE_1__ offloads; } ;
struct TYPE_11__ {int /*<<< orphan*/  priv; } ;
struct TYPE_10__ {TYPE_3__* mdev; } ;
struct TYPE_8__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_9__ {TYPE_2__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUP ; 
 int /*<<< orphan*/  ESWITCH ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_tc_flow*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_tc_flow*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mlx5e_tc_flow *flow)
{
	struct mlx5_eswitch *esw = flow->priv->mdev->priv.eswitch;

	if (!FUNC1(flow, ESWITCH) ||
	    !FUNC1(flow, DUP))
		return;

	FUNC5(&esw->offloads.peer_mutex);
	FUNC3(&flow->peer);
	FUNC6(&esw->offloads.peer_mutex);

	FUNC0(flow, DUP);

	FUNC4(flow->peer_flow->priv, flow->peer_flow);
	FUNC2(flow->peer_flow);
	flow->peer_flow = NULL;
}