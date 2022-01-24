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
struct nand_chip {int dummy; } ;
struct hynix_read_retry_otp {int nregs; int* regs; int /*<<< orphan*/  size; int /*<<< orphan*/  page; int /*<<< orphan*/ * values; } ;

/* Variables and functions */
 int NAND_HYNIX_CMD_APPLY_PARAMS ; 
 int NAND_HYNIX_CMD_SET_PARAMS ; 
 int FUNC0 (struct nand_chip*,int) ; 
 int FUNC1 (struct nand_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip,
			     const struct hynix_read_retry_otp *info,
			     void *buf)
{
	int i, ret;

	ret = FUNC3(chip);
	if (ret)
		return ret;

	ret = FUNC0(chip, NAND_HYNIX_CMD_SET_PARAMS);
	if (ret)
		return ret;

	for (i = 0; i < info->nregs; i++) {
		ret = FUNC1(chip, info->regs[i],
					      info->values[i]);
		if (ret)
			return ret;
	}

	ret = FUNC0(chip, NAND_HYNIX_CMD_APPLY_PARAMS);
	if (ret)
		return ret;

	/* Sequence to enter OTP mode? */
	ret = FUNC0(chip, 0x17);
	if (ret)
		return ret;

	ret = FUNC0(chip, 0x4);
	if (ret)
		return ret;

	ret = FUNC0(chip, 0x19);
	if (ret)
		return ret;

	/* Now read the page */
	ret = FUNC2(chip, info->page, 0, buf, info->size);
	if (ret)
		return ret;

	/* Put everything back to normal */
	ret = FUNC3(chip);
	if (ret)
		return ret;

	ret = FUNC0(chip, NAND_HYNIX_CMD_SET_PARAMS);
	if (ret)
		return ret;

	ret = FUNC1(chip, 0x38, 0);
	if (ret)
		return ret;

	ret = FUNC0(chip, NAND_HYNIX_CMD_APPLY_PARAMS);
	if (ret)
		return ret;

	return FUNC2(chip, 0, 0, NULL, 0);
}