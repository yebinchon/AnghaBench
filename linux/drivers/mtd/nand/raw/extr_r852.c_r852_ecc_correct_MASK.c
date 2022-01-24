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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct r852_device {int ctlreg; scalar_t__ dma_error; scalar_t__ card_unstable; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EIO ; 
 int /*<<< orphan*/  R852_CTL ; 
 int R852_CTL_ECC_ACCESS ; 
 int /*<<< orphan*/  R852_DATALINE ; 
 int R852_ECC_CORRECTABLE ; 
 int R852_ECC_ERR_BIT_MSK ; 
 int R852_ECC_FAIL ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 
 struct r852_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct r852_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r852_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *chip, uint8_t *dat,
			    uint8_t *read_ecc, uint8_t *calc_ecc)
{
	uint32_t ecc_reg;
	uint8_t ecc_status, err_byte;
	int i, error = 0;

	struct r852_device *dev = FUNC2(FUNC1(chip));

	if (dev->card_unstable)
		return 0;

	if (dev->dma_error) {
		dev->dma_error = 0;
		return -EIO;
	}

	FUNC4(dev, R852_CTL, dev->ctlreg | R852_CTL_ECC_ACCESS);
	ecc_reg = FUNC3(dev, R852_DATALINE);
	FUNC4(dev, R852_CTL, dev->ctlreg);

	for (i = 0 ; i <= 1 ; i++) {

		ecc_status = (ecc_reg >> 8) & 0xFF;

		/* ecc uncorrectable error */
		if (ecc_status & R852_ECC_FAIL) {
			FUNC0("ecc: unrecoverable error, in half %d", i);
			error = -EBADMSG;
			goto exit;
		}

		/* correctable error */
		if (ecc_status & R852_ECC_CORRECTABLE) {

			err_byte = ecc_reg & 0xFF;
			FUNC0("ecc: recoverable error, "
				"in half %d, byte %d, bit %d", i,
				err_byte, ecc_status & R852_ECC_ERR_BIT_MSK);

			dat[err_byte] ^=
				1 << (ecc_status & R852_ECC_ERR_BIT_MSK);
			error++;
		}

		dat += 256;
		ecc_reg >>= 16;
	}
exit:
	return error;
}