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
typedef  int uint32_t ;
struct sst25l_flash {int /*<<< orphan*/  lock; TYPE_1__* spi; } ;
struct mtd_info {int erasesize; } ;
struct erase_info {int len; int addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sst25l_flash*,int) ; 
 int FUNC4 (struct sst25l_flash*) ; 
 struct sst25l_flash* FUNC5 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC6(struct mtd_info *mtd, struct erase_info *instr)
{
	struct sst25l_flash *flash = FUNC5(mtd);
	uint32_t addr, end;
	int err;

	/* Sanity checks */
	if ((uint32_t)instr->len % mtd->erasesize)
		return -EINVAL;

	if ((uint32_t)instr->addr % mtd->erasesize)
		return -EINVAL;

	addr = instr->addr;
	end = addr + instr->len;

	FUNC1(&flash->lock);

	err = FUNC4(flash);
	if (err) {
		FUNC2(&flash->lock);
		return err;
	}

	while (addr < end) {
		err = FUNC3(flash, addr);
		if (err) {
			FUNC2(&flash->lock);
			FUNC0(&flash->spi->dev, "Erase failed\n");
			return err;
		}

		addr += mtd->erasesize;
	}

	FUNC2(&flash->lock);

	return 0;
}