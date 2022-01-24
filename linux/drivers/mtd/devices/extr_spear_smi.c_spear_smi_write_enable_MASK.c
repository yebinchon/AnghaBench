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
struct spear_smi {int status; int /*<<< orphan*/  lock; TYPE_1__* pdev; scalar_t__ io_base; int /*<<< orphan*/  cmd_complete; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BANK_SHIFT ; 
 int EIO ; 
 int /*<<< orphan*/  SMI_CMD_TIMEOUT ; 
 scalar_t__ SMI_CR1 ; 
 scalar_t__ SMI_CR2 ; 
 int SW_MODE ; 
 int TFF ; 
 int TFIE ; 
 int WE ; 
 int WM_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct spear_smi *dev, u32 bank)
{
	int ret;
	u32 ctrlreg1;

	FUNC1(&dev->lock);
	dev->status = 0; /* Will be set in interrupt handler */

	ctrlreg1 = FUNC3(dev->io_base + SMI_CR1);
	/* program smi in h/w mode */
	FUNC5(ctrlreg1 & ~SW_MODE, dev->io_base + SMI_CR1);

	/* give the flash, write enable command */
	FUNC5((bank << BANK_SHIFT) | WE | TFIE, dev->io_base + SMI_CR2);

	ret = FUNC4(dev->cmd_complete,
			dev->status & TFF, SMI_CMD_TIMEOUT);

	/* restore the ctrl regs state */
	FUNC5(ctrlreg1, dev->io_base + SMI_CR1);
	FUNC5(0, dev->io_base + SMI_CR2);

	if (ret == 0) {
		ret = -EIO;
		FUNC0(&dev->pdev->dev,
			"smi controller failed on write enable\n");
	} else if (ret > 0) {
		/* check whether write mode status is set for required bank */
		if (dev->status & (1 << (bank + WM_SHIFT)))
			ret = 0;
		else {
			FUNC0(&dev->pdev->dev, "couldn't enable write\n");
			ret = -EIO;
		}
	}

	FUNC2(&dev->lock);
	return ret;
}