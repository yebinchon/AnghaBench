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
struct mlx5e_priv {TYPE_2__* mdev; } ;
struct mlx5e_encap_entry {int /*<<< orphan*/  encap_hlist; int /*<<< orphan*/  refcnt; } ;
struct TYPE_6__ {int /*<<< orphan*/  encap_tbl_lock; } ;
struct mlx5_eswitch {TYPE_3__ offloads; } ;
struct TYPE_4__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_5__ {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,struct mlx5e_encap_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(struct mlx5e_priv *priv, struct mlx5e_encap_entry *e)
{
	struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;

	if (!FUNC3(&e->refcnt, &esw->offloads.encap_tbl_lock))
		return;
	FUNC0(&e->encap_hlist);
	FUNC2(&esw->offloads.encap_tbl_lock);

	FUNC1(priv, e);
}