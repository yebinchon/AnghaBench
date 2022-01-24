#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mlx5dr_ste {TYPE_1__* htbl; int /*<<< orphan*/  ste_chain_location; } ;
struct mlx5dr_matcher_rx_tx {int dummy; } ;
struct mlx5dr_matcher {TYPE_2__* tbl; } ;
struct TYPE_4__ {int /*<<< orphan*/  dmn; } ;
struct TYPE_3__ {int /*<<< orphan*/  miss_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  DR_CHUNK_SIZE_1 ; 
 struct mlx5dr_ste* FUNC0 (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,struct mlx5dr_ste*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_ste*,struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5dr_ste*) ; 

__attribute__((used)) static struct mlx5dr_ste *
FUNC5(struct mlx5dr_matcher *matcher,
			       struct mlx5dr_matcher_rx_tx *nic_matcher,
			       u8 *hw_ste,
			       struct mlx5dr_ste *orig_ste)
{
	struct mlx5dr_ste *ste;

	ste = FUNC0(matcher, nic_matcher, hw_ste);
	if (!ste) {
		FUNC1(matcher->tbl->dmn, "Failed creating collision entry\n");
		return NULL;
	}

	ste->ste_chain_location = orig_ste->ste_chain_location;

	/* In collision entry, all members share the same miss_list_head */
	ste->htbl->miss_list = FUNC4(orig_ste);

	/* Next table */
	if (FUNC2(matcher, nic_matcher, ste, hw_ste,
					DR_CHUNK_SIZE_1)) {
		FUNC1(matcher->tbl->dmn, "Failed allocating table\n");
		goto free_tbl;
	}

	return ste;

free_tbl:
	FUNC3(ste, matcher, nic_matcher);
	return NULL;
}