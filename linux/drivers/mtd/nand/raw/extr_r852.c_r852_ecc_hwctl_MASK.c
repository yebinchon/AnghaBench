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
#define  NAND_ECC_READ 130 
#define  NAND_ECC_READSYN 129 
#define  NAND_ECC_WRITE 128 
 int /*<<< orphan*/  R852_CTL ; 
 int R852_CTL_ECC_ACCESS ; 
 int R852_CTL_ECC_ENABLE ; 
 int /*<<< orphan*/  R852_DATALINE ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*) ; 
 struct r852_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r852_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r852_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *chip, int mode)
{
	struct r852_device *dev = FUNC1(FUNC0(chip));

	if (dev->card_unstable)
		return;

	switch (mode) {
	case NAND_ECC_READ:
	case NAND_ECC_WRITE:
		/* enable ecc generation/check*/
		dev->ctlreg |= R852_CTL_ECC_ENABLE;

		/* flush ecc buffer */
		FUNC3(dev, R852_CTL,
			dev->ctlreg | R852_CTL_ECC_ACCESS);

		FUNC2(dev, R852_DATALINE);
		FUNC3(dev, R852_CTL, dev->ctlreg);
		return;

	case NAND_ECC_READSYN:
		/* disable ecc generation */
		dev->ctlreg &= ~R852_CTL_ECC_ENABLE;
		FUNC3(dev, R852_CTL, dev->ctlreg);
	}
}