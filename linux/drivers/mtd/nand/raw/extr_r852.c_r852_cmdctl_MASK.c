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
struct r852_device {int ctlreg; scalar_t__ card_unstable; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 unsigned int NAND_ALE ; 
 unsigned int NAND_CLE ; 
 int NAND_CMD_ERASE1 ; 
 int NAND_CMD_NONE ; 
 int NAND_CMD_SEQIN ; 
 unsigned int NAND_CTRL_CHANGE ; 
 unsigned int NAND_NCE ; 
 int /*<<< orphan*/  R852_CTL ; 
 int R852_CTL_CARDENABLE ; 
 int R852_CTL_COMMAND ; 
 int R852_CTL_DATA ; 
 int R852_CTL_ON ; 
 int R852_CTL_WRITE ; 
 int /*<<< orphan*/  R852_DATALINE ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*) ; 
 struct r852_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r852_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct nand_chip *chip, int dat, unsigned int ctrl)
{
	struct r852_device *dev = FUNC1(FUNC0(chip));

	if (dev->card_unstable)
		return;

	if (ctrl & NAND_CTRL_CHANGE) {

		dev->ctlreg &= ~(R852_CTL_DATA | R852_CTL_COMMAND |
				 R852_CTL_ON | R852_CTL_CARDENABLE);

		if (ctrl & NAND_ALE)
			dev->ctlreg |= R852_CTL_DATA;

		if (ctrl & NAND_CLE)
			dev->ctlreg |= R852_CTL_COMMAND;

		if (ctrl & NAND_NCE)
			dev->ctlreg |= (R852_CTL_CARDENABLE | R852_CTL_ON);
		else
			dev->ctlreg &= ~R852_CTL_WRITE;

		/* when write is stareted, enable write access */
		if (dat == NAND_CMD_ERASE1)
			dev->ctlreg |= R852_CTL_WRITE;

		FUNC2(dev, R852_CTL, dev->ctlreg);
	}

	 /* HACK: NAND_CMD_SEQIN is called without NAND_CTRL_CHANGE, but we need
		to set write mode */
	if (dat == NAND_CMD_SEQIN && (dev->ctlreg & R852_CTL_COMMAND)) {
		dev->ctlreg |= R852_CTL_WRITE;
		FUNC2(dev, R852_CTL, dev->ctlreg);
	}

	if (dat != NAND_CMD_NONE)
		FUNC2(dev, R852_DATALINE, dat);
}