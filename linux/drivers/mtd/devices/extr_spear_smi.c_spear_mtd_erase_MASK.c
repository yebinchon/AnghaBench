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
typedef  int u32 ;
struct spear_snor_flash {int bank; int /*<<< orphan*/  lock; } ;
struct spear_smi {int num_flashes; TYPE_1__* pdev; } ;
struct mtd_info {scalar_t__ erasesize; struct spear_smi* priv; } ;
struct erase_info {int addr; int len; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct spear_snor_flash* FUNC1 (struct mtd_info*) ; 
 int FUNC2 (struct spear_snor_flash*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct spear_smi*,int,int,int) ; 

__attribute__((used)) static int FUNC6(struct mtd_info *mtd, struct erase_info *e_info)
{
	struct spear_snor_flash *flash = FUNC1(mtd);
	struct spear_smi *dev = mtd->priv;
	u32 addr, command, bank;
	int len, ret;

	if (!flash || !dev)
		return -ENODEV;

	bank = flash->bank;
	if (bank > dev->num_flashes - 1) {
		FUNC0(&dev->pdev->dev, "Invalid Bank Num");
		return -EINVAL;
	}

	addr = e_info->addr;
	len = e_info->len;

	FUNC3(&flash->lock);

	/* now erase sectors in loop */
	while (len) {
		command = FUNC2(flash, addr);
		/* preparing the command for flash */
		ret = FUNC5(dev, bank, command, 4);
		if (ret) {
			FUNC4(&flash->lock);
			return ret;
		}
		addr += mtd->erasesize;
		len -= mtd->erasesize;
	}

	FUNC4(&flash->lock);

	return 0;
}