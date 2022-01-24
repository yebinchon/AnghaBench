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
struct sram_reserve {scalar_t__ protect_exec; scalar_t__ export; scalar_t__ pool; scalar_t__ start; } ;
struct sram_partition {scalar_t__ base; int /*<<< orphan*/  lock; } ;
struct sram_dev {size_t partitions; scalar_t__ virt_base; struct sram_partition* partition; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sram_dev*,struct sram_reserve*,int /*<<< orphan*/ ,struct sram_partition*) ; 
 int FUNC2 (struct sram_dev*,struct sram_reserve*,int /*<<< orphan*/ ,struct sram_partition*) ; 
 int /*<<< orphan*/  FUNC3 (struct sram_partition*) ; 
 int FUNC4 (struct sram_dev*,struct sram_reserve*,struct sram_partition*) ; 

__attribute__((used)) static int FUNC5(struct sram_dev *sram, struct sram_reserve *block,
			      phys_addr_t start)
{
	int ret;
	struct sram_partition *part = &sram->partition[sram->partitions];

	FUNC0(&part->lock);
	part->base = sram->virt_base + block->start;

	if (block->pool) {
		ret = FUNC2(sram, block, start, part);
		if (ret)
			return ret;
	}
	if (block->export) {
		ret = FUNC1(sram, block, start, part);
		if (ret)
			return ret;
	}
	if (block->protect_exec) {
		ret = FUNC4(sram, block, part);
		if (ret)
			return ret;

		ret = FUNC2(sram, block, start, part);
		if (ret)
			return ret;

		FUNC3(part);
	}

	sram->partitions++;

	return 0;
}