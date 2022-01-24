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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u8 ;
struct ingenic_ecc_params {int bytes; int size; } ;
struct ingenic_ecc {scalar_t__ base; } ;

/* Variables and functions */
 int EBADMSG ; 
 int ETIMEDOUT ; 
 int JZ_NAND_ECC_CTRL_ENABLE ; 
 int JZ_NAND_ECC_CTRL_PAR_READY ; 
 int JZ_NAND_STATUS_DEC_FINISH ; 
 int JZ_NAND_STATUS_ERROR ; 
 int JZ_NAND_STATUS_ERR_COUNT ; 
 int JZ_NAND_STATUS_UNCOR_ERROR ; 
 scalar_t__ JZ_REG_NAND_ECC_CTRL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ JZ_REG_NAND_IRQ_STAT ; 
 scalar_t__ JZ_REG_NAND_PAR0 ; 
 int /*<<< orphan*/  FUNC1 (struct ingenic_ecc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct ingenic_ecc *ecc,
			      struct ingenic_ecc_params *params,
			      u8 *buf, u8 *ecc_code)
{
	int i, error_count, index;
	uint32_t reg, status, error;
	unsigned int timeout = 1000;

	FUNC1(ecc, false);

	for (i = 0; i < params->bytes; ++i)
		FUNC4(ecc_code[i], ecc->base + JZ_REG_NAND_PAR0 + i);

	reg = FUNC3(ecc->base + JZ_REG_NAND_ECC_CTRL);
	reg |= JZ_NAND_ECC_CTRL_PAR_READY;
	FUNC5(reg, ecc->base + JZ_REG_NAND_ECC_CTRL);

	do {
		status = FUNC3(ecc->base + JZ_REG_NAND_IRQ_STAT);
	} while (!(status & JZ_NAND_STATUS_DEC_FINISH) && --timeout);

	if (timeout == 0)
		return -ETIMEDOUT;

	reg = FUNC3(ecc->base + JZ_REG_NAND_ECC_CTRL);
	reg &= ~JZ_NAND_ECC_CTRL_ENABLE;
	FUNC5(reg, ecc->base + JZ_REG_NAND_ECC_CTRL);

	if (status & JZ_NAND_STATUS_ERROR) {
		if (status & JZ_NAND_STATUS_UNCOR_ERROR)
			return -EBADMSG;

		error_count = (status & JZ_NAND_STATUS_ERR_COUNT) >> 29;

		for (i = 0; i < error_count; ++i) {
			error = FUNC3(ecc->base + FUNC0(i));
			index = ((error >> 16) & 0x1ff) - 1;
			if (index >= 0 && index < params->size)
				FUNC2(buf, index, error & 0x1ff);
		}

		return error_count;
	}

	return 0;
}