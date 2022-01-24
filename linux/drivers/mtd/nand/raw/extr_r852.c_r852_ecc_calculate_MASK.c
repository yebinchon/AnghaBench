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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct sm_oob {int* ecc1; int* ecc2; } ;
struct r852_device {int ctlreg; scalar_t__ card_unstable; } ;
struct nand_chip {int dummy; } ;
typedef  int ecc2 ;
typedef  int ecc1 ;

/* Variables and functions */
 int /*<<< orphan*/  R852_CTL ; 
 int R852_CTL_ECC_ACCESS ; 
 int R852_CTL_ECC_ENABLE ; 
 int /*<<< orphan*/  R852_DATALINE ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*) ; 
 struct r852_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct r852_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r852_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip, const uint8_t *dat,
			      uint8_t *ecc_code)
{
	struct r852_device *dev = FUNC1(FUNC0(chip));
	struct sm_oob *oob = (struct sm_oob *)ecc_code;
	uint32_t ecc1, ecc2;

	if (dev->card_unstable)
		return 0;

	dev->ctlreg &= ~R852_CTL_ECC_ENABLE;
	FUNC3(dev, R852_CTL, dev->ctlreg | R852_CTL_ECC_ACCESS);

	ecc1 = FUNC2(dev, R852_DATALINE);
	ecc2 = FUNC2(dev, R852_DATALINE);

	oob->ecc1[0] = (ecc1) & 0xFF;
	oob->ecc1[1] = (ecc1 >> 8) & 0xFF;
	oob->ecc1[2] = (ecc1 >> 16) & 0xFF;

	oob->ecc2[0] = (ecc2) & 0xFF;
	oob->ecc2[1] = (ecc2 >> 8) & 0xFF;
	oob->ecc2[2] = (ecc2 >> 16) & 0xFF;

	FUNC3(dev, R852_CTL, dev->ctlreg);
	return 0;
}