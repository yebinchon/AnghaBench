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
struct seq_file {struct mt76x02_dev* private; } ;
struct TYPE_3__ {int seq_pool_len; int seq_len; } ;
struct mt76x02_dfs_pattern_detector {TYPE_2__* stats; TYPE_1__ seq_stats; } ;
struct mt76x02_dev {struct mt76x02_dfs_pattern_detector dfs_pd; } ;
struct TYPE_4__ {int hw_pattern; int hw_pulse_discarded; int sw_pattern; } ;

/* Variables and functions */
 int MT_DFS_NUM_ENGINES ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static int
FUNC2(struct seq_file *file, void *data)
{
	struct mt76x02_dev *dev = file->private;
	struct mt76x02_dfs_pattern_detector *dfs_pd = &dev->dfs_pd;
	int i;

	FUNC0(file, "allocated sequences:\t%d\n",
		   dfs_pd->seq_stats.seq_pool_len);
	FUNC0(file, "used sequences:\t\t%d\n",
		   dfs_pd->seq_stats.seq_len);
	FUNC1(file, "\n");

	for (i = 0; i < MT_DFS_NUM_ENGINES; i++) {
		FUNC0(file, "engine: %d\n", i);
		FUNC0(file, "  hw pattern detected:\t%d\n",
			   dfs_pd->stats[i].hw_pattern);
		FUNC0(file, "  hw pulse discarded:\t%d\n",
			   dfs_pd->stats[i].hw_pulse_discarded);
		FUNC0(file, "  sw pattern detected:\t%d\n",
			   dfs_pd->stats[i].sw_pattern);
	}

	return 0;
}