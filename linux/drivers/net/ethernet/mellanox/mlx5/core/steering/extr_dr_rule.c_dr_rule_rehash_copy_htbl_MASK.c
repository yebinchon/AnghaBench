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
struct mlx5dr_ste_htbl {struct mlx5dr_ste* ste_arr; int /*<<< orphan*/  chunk_size; } ;
struct mlx5dr_ste {int dummy; } ;
struct mlx5dr_matcher_rx_tx {int dummy; } ;
struct mlx5dr_matcher {TYPE_1__* tbl; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmn; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,int /*<<< orphan*/ ,struct mlx5dr_ste_htbl*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_ste*) ; 
 scalar_t__ FUNC4 (struct mlx5dr_ste*) ; 

__attribute__((used)) static int FUNC5(struct mlx5dr_matcher *matcher,
				    struct mlx5dr_matcher_rx_tx *nic_matcher,
				    struct mlx5dr_ste_htbl *cur_htbl,
				    struct mlx5dr_ste_htbl *new_htbl,
				    struct list_head *update_list)
{
	struct mlx5dr_ste *cur_ste;
	int cur_entries;
	int err = 0;
	int i;

	cur_entries = FUNC2(cur_htbl->chunk_size);

	if (cur_entries < 1) {
		FUNC1(matcher->tbl->dmn, "Invalid number of entries\n");
		return -EINVAL;
	}

	for (i = 0; i < cur_entries; i++) {
		cur_ste = &cur_htbl->ste_arr[i];
		if (FUNC4(cur_ste)) /* Empty, nothing to copy */
			continue;

		err = FUNC0(matcher,
						    nic_matcher,
						    FUNC3(cur_ste),
						    new_htbl,
						    update_list);
		if (err)
			goto clean_copy;
	}

clean_copy:
	return err;
}