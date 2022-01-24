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
struct mlx5_rl_table {int /*<<< orphan*/  rl_lock; } ;
struct mlx5_rate_limit {scalar_t__ rate; int /*<<< orphan*/  typical_pkt_sz; int /*<<< orphan*/  max_burst_sz; int /*<<< orphan*/  member_0; } ;
struct mlx5_rl_entry {struct mlx5_rate_limit rl; int /*<<< orphan*/  index; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {struct mlx5_rl_table rl_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 struct mlx5_rl_entry* FUNC0 (struct mlx5_rl_table*,struct mlx5_rate_limit*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ,struct mlx5_rate_limit*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx5_core_dev *dev, struct mlx5_rate_limit *rl)
{
	struct mlx5_rl_table *table = &dev->priv.rl_table;
	struct mlx5_rl_entry *entry = NULL;
	struct mlx5_rate_limit reset_rl = {0};

	/* 0 is a reserved value for unlimited rate */
	if (rl->rate == 0)
		return;

	FUNC3(&table->rl_lock);
	entry = FUNC0(table, rl);
	if (!entry || !entry->refcount) {
		FUNC1(dev, "Rate %u, max_burst_sz %u typical_pkt_sz %u are not configured\n",
			       rl->rate, rl->max_burst_sz, rl->typical_pkt_sz);
		goto out;
	}

	entry->refcount--;
	if (!entry->refcount) {
		/* need to remove rate */
		FUNC2(dev, entry->index, &reset_rl);
		entry->rl = reset_rl;
	}

out:
	FUNC4(&table->rl_lock);
}