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
typedef  int u32 ;
struct spear_smi {int status; int /*<<< orphan*/  lock; scalar_t__ io_base; int /*<<< orphan*/  cmd_complete; } ;

/* Variables and functions */
 int BANK_SHIFT ; 
 int ETIMEDOUT ; 
 int RD_STATUS_REG ; 
 int /*<<< orphan*/  SMI_CMD_TIMEOUT ; 
 scalar_t__ SMI_CR1 ; 
 scalar_t__ SMI_CR2 ; 
 int SW_MODE ; 
 int TFF ; 
 int TFIE ; 
 int WB_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct spear_smi *dev, u32 bank)
{
	int ret;
	u32 ctrlreg1;

	FUNC0(&dev->lock);
	dev->status = 0; /* Will be set in interrupt handler */

	ctrlreg1 = FUNC2(dev->io_base + SMI_CR1);
	/* program smi in hw mode */
	FUNC4(ctrlreg1 & ~(SW_MODE | WB_MODE), dev->io_base + SMI_CR1);

	/* performing a rsr instruction in hw mode */
	FUNC4((bank << BANK_SHIFT) | RD_STATUS_REG | TFIE,
			dev->io_base + SMI_CR2);

	/* wait for tff */
	ret = FUNC3(dev->cmd_complete,
			dev->status & TFF, SMI_CMD_TIMEOUT);

	/* copy dev->status (lower 16 bits) in order to release lock */
	if (ret > 0)
		ret = dev->status & 0xffff;
	else if (ret == 0)
		ret = -ETIMEDOUT;

	/* restore the ctrl regs state */
	FUNC4(ctrlreg1, dev->io_base + SMI_CR1);
	FUNC4(0, dev->io_base + SMI_CR2);
	FUNC1(&dev->lock);

	return ret;
}