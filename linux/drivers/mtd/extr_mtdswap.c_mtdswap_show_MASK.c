#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct seq_file {scalar_t__ private; } ;
struct rb_root {scalar_t__ rb_node; } ;
struct mtdswap_dev {unsigned int curr_write_pos; unsigned int eblks; scalar_t__* page_data; unsigned int pages_per_eblk; unsigned int sect_read_count; unsigned int sect_write_count; unsigned int discard_count; unsigned int mtd_read_count; unsigned int mtd_write_count; unsigned int discard_page_count; TYPE_4__* mbd_dev; TYPE_5__* mtd; TYPE_3__* eb_data; TYPE_2__* curr_write; TYPE_1__* trees; } ;
struct TYPE_10__ {int erasesize; } ;
struct TYPE_9__ {unsigned int size; int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {scalar_t__ erase_count; } ;
struct TYPE_7__ {unsigned int erase_count; } ;
struct TYPE_6__ {unsigned int count; struct rb_root root; } ;

/* Variables and functions */
 scalar_t__ BLOCK_UNDEF ; 
 unsigned int FUNC0 (struct rb_root*) ; 
 unsigned int FUNC1 (struct rb_root*) ; 
 int MTDSWAP_TREE_CNT ; 
 unsigned int FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC7(struct seq_file *s, void *data)
{
	struct mtdswap_dev *d = (struct mtdswap_dev *) s->private;
	unsigned long sum;
	unsigned int count[MTDSWAP_TREE_CNT];
	unsigned int min[MTDSWAP_TREE_CNT];
	unsigned int max[MTDSWAP_TREE_CNT];
	unsigned int i, cw = 0, cwp = 0, cwecount = 0, bb_cnt, mapped, pages;
	uint64_t use_size;
	static const char * const name[] = {
		"clean", "used", "low", "high", "dirty", "bitflip", "failing"
	};

	FUNC3(&d->mbd_dev->lock);

	for (i = 0; i < MTDSWAP_TREE_CNT; i++) {
		struct rb_root *root = &d->trees[i].root;

		if (root->rb_node) {
			count[i] = d->trees[i].count;
			min[i] = FUNC1(root);
			max[i] = FUNC0(root);
		} else
			count[i] = 0;
	}

	if (d->curr_write) {
		cw = 1;
		cwp = d->curr_write_pos;
		cwecount = d->curr_write->erase_count;
	}

	sum = 0;
	for (i = 0; i < d->eblks; i++)
		sum += d->eb_data[i].erase_count;

	use_size = (uint64_t)d->eblks * d->mtd->erasesize;
	bb_cnt = FUNC2(d->mtd, use_size);

	mapped = 0;
	pages = d->mbd_dev->size;
	for (i = 0; i < pages; i++)
		if (d->page_data[i] != BLOCK_UNDEF)
			mapped++;

	FUNC4(&d->mbd_dev->lock);

	for (i = 0; i < MTDSWAP_TREE_CNT; i++) {
		if (!count[i])
			continue;

		if (min[i] != max[i])
			FUNC5(s, "%s:\t%5d erase blocks, erased min %d, "
				"max %d times\n",
				name[i], count[i], min[i], max[i]);
		else
			FUNC5(s, "%s:\t%5d erase blocks, all erased %d "
				"times\n", name[i], count[i], min[i]);
	}

	if (bb_cnt)
		FUNC5(s, "bad:\t%5u erase blocks\n", bb_cnt);

	if (cw)
		FUNC5(s, "current erase block: %u pages used, %u free, "
			"erased %u times\n",
			cwp, d->pages_per_eblk - cwp, cwecount);

	FUNC5(s, "total erasures: %lu\n", sum);

	FUNC6(s, "\n");

	FUNC5(s, "mtdswap_readsect count: %llu\n", d->sect_read_count);
	FUNC5(s, "mtdswap_writesect count: %llu\n", d->sect_write_count);
	FUNC5(s, "mtdswap_discard count: %llu\n", d->discard_count);
	FUNC5(s, "mtd read count: %llu\n", d->mtd_read_count);
	FUNC5(s, "mtd write count: %llu\n", d->mtd_write_count);
	FUNC5(s, "discarded pages count: %llu\n", d->discard_page_count);

	FUNC6(s, "\n");
	FUNC5(s, "total pages: %u\n", pages);
	FUNC5(s, "pages mapped: %u\n", mapped);

	return 0;
}