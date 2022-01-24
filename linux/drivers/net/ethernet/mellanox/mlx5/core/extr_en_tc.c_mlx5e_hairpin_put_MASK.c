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
struct TYPE_10__ {int /*<<< orphan*/  hairpin_tbl_lock; } ;
struct TYPE_9__ {TYPE_4__ tc; } ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; TYPE_3__ fs; } ;
struct mlx5e_hairpin_entry {int /*<<< orphan*/  flows; TYPE_5__* hp; int /*<<< orphan*/  hairpin_hlist; int /*<<< orphan*/  refcnt; } ;
struct TYPE_11__ {TYPE_2__* pair; } ;
struct TYPE_8__ {TYPE_1__* peer_mdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_hairpin_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct mlx5e_priv *priv,
			      struct mlx5e_hairpin_entry *hpe)
{
	/* no more hairpin flows for us, release the hairpin pair */
	if (!FUNC9(&hpe->refcnt, &priv->fs.tc.hairpin_tbl_lock))
		return;
	FUNC3(&hpe->hairpin_hlist);
	FUNC7(&priv->fs.tc.hairpin_tbl_lock);

	if (!FUNC0(hpe->hp)) {
		FUNC8(priv->netdev, "del hairpin: peer %s\n",
			   FUNC2(hpe->hp->pair->peer_mdev->device));

		FUNC6(hpe->hp);
	}

	FUNC1(!FUNC5(&hpe->flows));
	FUNC4(hpe);
}