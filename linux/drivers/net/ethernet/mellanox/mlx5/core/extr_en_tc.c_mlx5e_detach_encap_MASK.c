#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_tc_flow {TYPE_3__* encaps; } ;
struct mlx5e_priv {TYPE_2__* mdev; } ;
struct mlx5e_encap_entry {int /*<<< orphan*/  encap_hlist; int /*<<< orphan*/  refcnt; } ;
struct TYPE_8__ {int /*<<< orphan*/  encap_tbl_lock; } ;
struct mlx5_eswitch {TYPE_4__ offloads; } ;
struct TYPE_7__ {struct mlx5e_encap_entry* e; int /*<<< orphan*/  list; } ;
struct TYPE_5__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_6__ {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,struct mlx5e_encap_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mlx5e_priv *priv,
			       struct mlx5e_tc_flow *flow, int out_index)
{
	struct mlx5e_encap_entry *e = flow->encaps[out_index].e;
	struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;

	/* flow wasn't fully initialized */
	if (!e)
		return;

	FUNC3(&esw->offloads.encap_tbl_lock);
	FUNC1(&flow->encaps[out_index].list);
	flow->encaps[out_index].e = NULL;
	if (!FUNC5(&e->refcnt)) {
		FUNC4(&esw->offloads.encap_tbl_lock);
		return;
	}
	FUNC0(&e->encap_hlist);
	FUNC4(&esw->offloads.encap_tbl_lock);

	FUNC2(priv, e);
}