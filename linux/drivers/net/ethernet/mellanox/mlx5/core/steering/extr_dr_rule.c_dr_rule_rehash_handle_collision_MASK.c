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
struct mlx5dr_ste {TYPE_1__* htbl; } ;
struct mlx5dr_matcher_rx_tx {int dummy; } ;
struct mlx5dr_matcher {TYPE_2__* tbl; } ;
struct list_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dmn; } ;
struct TYPE_3__ {int /*<<< orphan*/  miss_list; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5dr_ste*,int /*<<< orphan*/ ,struct list_head*) ; 
 struct mlx5dr_ste* FUNC1 (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_ste*,struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5dr_ste*) ; 

__attribute__((used)) static struct mlx5dr_ste *
FUNC5(struct mlx5dr_matcher *matcher,
				struct mlx5dr_matcher_rx_tx *nic_matcher,
				struct list_head *update_list,
				struct mlx5dr_ste *col_ste,
				u8 *hw_ste)
{
	struct mlx5dr_ste *new_ste;
	int ret;

	new_ste = FUNC1(matcher, nic_matcher, hw_ste);
	if (!new_ste)
		return NULL;

	/* In collision entry, all members share the same miss_list_head */
	new_ste->htbl->miss_list = FUNC4(col_ste);

	/* Update the previous from the list */
	ret = FUNC0(new_ste,
					  FUNC4(col_ste),
					  update_list);
	if (ret) {
		FUNC2(matcher->tbl->dmn, "Failed update dup entry\n");
		goto err_exit;
	}

	return new_ste;

err_exit:
	FUNC3(new_ste, matcher, nic_matcher);
	return NULL;
}