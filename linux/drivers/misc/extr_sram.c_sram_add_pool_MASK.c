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
struct sram_reserve {int /*<<< orphan*/  size; int /*<<< orphan*/  label; } ;
struct sram_partition {scalar_t__ base; int /*<<< orphan*/  pool; } ;
struct sram_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRAM_GRANULARITY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sram_dev *sram, struct sram_reserve *block,
			 phys_addr_t start, struct sram_partition *part)
{
	int ret;

	part->pool = FUNC3(sram->dev, FUNC5(SRAM_GRANULARITY),
					  NUMA_NO_NODE, block->label);
	if (FUNC0(part->pool))
		return FUNC1(part->pool);

	ret = FUNC4(part->pool, (unsigned long)part->base, start,
				block->size, NUMA_NO_NODE);
	if (ret < 0) {
		FUNC2(sram->dev, "failed to register subpool: %d\n", ret);
		return ret;
	}

	return 0;
}