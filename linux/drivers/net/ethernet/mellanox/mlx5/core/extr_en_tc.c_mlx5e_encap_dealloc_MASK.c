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
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
struct mlx5e_encap_entry {scalar_t__ compl_result; int flags; int /*<<< orphan*/  encap_header; int /*<<< orphan*/  tun_info; int /*<<< orphan*/  pkt_reformat; int /*<<< orphan*/  out_dev; int /*<<< orphan*/  flows; } ;

/* Variables and functions */
 int MLX5_ENCAP_ENTRY_VALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_encap_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mlx5e_encap_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 

__attribute__((used)) static void FUNC7(struct mlx5e_priv *priv, struct mlx5e_encap_entry *e)
{
	FUNC0(!FUNC3(&e->flows));

	if (e->compl_result > 0) {
		FUNC5(FUNC6(e->out_dev), e);

		if (e->flags & MLX5_ENCAP_ENTRY_VALID)
			FUNC4(priv->mdev, e->pkt_reformat);
	}

	FUNC1(e->tun_info);
	FUNC1(e->encap_header);
	FUNC2(e, rcu);
}