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
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nand_chip*,int,int,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static int
FUNC2(struct nand_chip *chip, uint32_t data_offs,
				 uint32_t readlen, uint8_t *bufpoi, int page)
{
	int ret;

	ret = FUNC0(chip, page, data_offs,
				bufpoi + data_offs, readlen);
	if (ret)
		return ret;

	return FUNC1(chip);
}