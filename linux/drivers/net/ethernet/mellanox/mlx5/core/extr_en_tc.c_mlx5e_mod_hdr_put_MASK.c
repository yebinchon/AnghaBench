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
struct mod_hdr_tbl {int /*<<< orphan*/  lock; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
struct mlx5e_mod_hdr_entry {scalar_t__ compl_result; int /*<<< orphan*/  modify_hdr; int /*<<< orphan*/  flows; int /*<<< orphan*/  mod_hdr_hlist; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mod_hdr_tbl* FUNC1 (struct mlx5e_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_mod_hdr_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mlx5e_priv *priv,
			      struct mlx5e_mod_hdr_entry *mh,
			      int namespace)
{
	struct mod_hdr_tbl *tbl = FUNC1(priv, namespace);

	if (!FUNC7(&mh->refcnt, &tbl->lock))
		return;
	FUNC2(&mh->mod_hdr_hlist);
	FUNC6(&tbl->lock);

	FUNC0(!FUNC4(&mh->flows));
	if (mh->compl_result > 0)
		FUNC5(priv->mdev, mh->modify_hdr);

	FUNC3(mh);
}