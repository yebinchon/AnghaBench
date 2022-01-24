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
struct mlx5e_tc_flow {TYPE_1__* mh; int /*<<< orphan*/  mod_hdr; } ;
struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flows_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_tc_flow*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mlx5e_priv *priv,
				 struct mlx5e_tc_flow *flow)
{
	/* flow wasn't fully initialized */
	if (!flow->mh)
		return;

	FUNC3(&flow->mh->flows_lock);
	FUNC1(&flow->mod_hdr);
	FUNC4(&flow->mh->flows_lock);

	FUNC2(priv, flow->mh, FUNC0(flow));
	flow->mh = NULL;
}