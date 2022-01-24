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

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct nand_chip*,void*,int) ; 
 int FUNC1 (struct nand_chip*,void*,int) ; 
 int FUNC2 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip, const void *buf,
			    const void *oob_buf, int page)
{
	int ret;

	if (!buf && !oob_buf)
		return -EINVAL;

	ret = FUNC2(chip, page, 0, NULL, 0);
	if (ret)
		return ret;

	if (buf) {
		ret = FUNC1(chip, (void *)buf, true);
		if (ret)
			return ret;
	}

	if (oob_buf) {
		ret = FUNC0(chip, (void *)oob_buf, true);
		if (ret)
			return ret;
	}

	return FUNC3(chip);
}