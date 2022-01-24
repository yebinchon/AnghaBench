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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5dr_ste_htbl {struct mlx5dr_ste* ste_arr; } ;
struct mlx5dr_ste {int dummy; } ;
struct mlx5dr_matcher_rx_tx {TYPE_1__* e_anchor; } ;
struct mlx5dr_matcher {TYPE_2__* tbl; } ;
struct mlx5dr_domain {int /*<<< orphan*/  ste_icm_pool; } ;
struct TYPE_6__ {int /*<<< orphan*/  icm_addr; } ;
struct TYPE_5__ {struct mlx5dr_domain* dmn; } ;
struct TYPE_4__ {TYPE_3__* chunk; } ;

/* Variables and functions */
 int /*<<< orphan*/  DR_CHUNK_SIZE_1 ; 
 int /*<<< orphan*/  MLX5DR_STE_LU_TYPE_DONT_CARE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5dr_domain*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_ste_htbl*) ; 
 struct mlx5dr_ste_htbl* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx5dr_ste *
FUNC4(struct mlx5dr_matcher *matcher,
			      struct mlx5dr_matcher_rx_tx *nic_matcher,
			      u8 *hw_ste)
{
	struct mlx5dr_domain *dmn = matcher->tbl->dmn;
	struct mlx5dr_ste_htbl *new_htbl;
	struct mlx5dr_ste *ste;

	/* Create new table for miss entry */
	new_htbl = FUNC2(dmn->ste_icm_pool,
					 DR_CHUNK_SIZE_1,
					 MLX5DR_STE_LU_TYPE_DONT_CARE,
					 0);
	if (!new_htbl) {
		FUNC0(dmn, "Failed allocating collision table\n");
		return NULL;
	}

	/* One and only entry, never grows */
	ste = new_htbl->ste_arr;
	FUNC3(hw_ste, nic_matcher->e_anchor->chunk->icm_addr);
	FUNC1(new_htbl);

	return ste;
}