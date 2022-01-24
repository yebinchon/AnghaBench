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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  eaddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  sarea; int /*<<< orphan*/  cfg; } ;
struct atmel_pmecc_user {TYPE_1__ cache; struct atmel_pmecc* pmecc; } ;
struct TYPE_4__ {scalar_t__ base; } ;
struct atmel_pmecc {TYPE_2__ regs; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ATMEL_PMECC_CFG ; 
 scalar_t__ ATMEL_PMECC_CTRL ; 
 scalar_t__ ATMEL_PMECC_EADDR ; 
 scalar_t__ ATMEL_PMECC_SADDR ; 
 scalar_t__ ATMEL_PMECC_SAREA ; 
 int EINVAL ; 
 int NAND_ECC_READ ; 
 int NAND_ECC_WRITE ; 
 int /*<<< orphan*/  PMECC_CFG_AUTO_ENABLE ; 
 int /*<<< orphan*/  PMECC_CFG_WRITE_OP ; 
 int /*<<< orphan*/  PMECC_CTRL_DATA ; 
 int /*<<< orphan*/  PMECC_CTRL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3(struct atmel_pmecc_user *user, int op)
{
	struct atmel_pmecc *pmecc = user->pmecc;
	u32 cfg;

	if (op != NAND_ECC_READ && op != NAND_ECC_WRITE) {
		FUNC0(pmecc->dev, "Bad ECC operation!");
		return -EINVAL;
	}

	FUNC1(&user->pmecc->lock);

	cfg = user->cache.cfg;
	if (op == NAND_ECC_WRITE)
		cfg |= PMECC_CFG_WRITE_OP;
	else
		cfg |= PMECC_CFG_AUTO_ENABLE;

	FUNC2(cfg, pmecc->regs.base + ATMEL_PMECC_CFG);
	FUNC2(user->cache.sarea, pmecc->regs.base + ATMEL_PMECC_SAREA);
	FUNC2(user->cache.saddr, pmecc->regs.base + ATMEL_PMECC_SADDR);
	FUNC2(user->cache.eaddr, pmecc->regs.base + ATMEL_PMECC_EADDR);

	FUNC2(PMECC_CTRL_ENABLE, pmecc->regs.base + ATMEL_PMECC_CTRL);
	FUNC2(PMECC_CTRL_DATA, pmecc->regs.base + ATMEL_PMECC_CTRL);

	return 0;
}