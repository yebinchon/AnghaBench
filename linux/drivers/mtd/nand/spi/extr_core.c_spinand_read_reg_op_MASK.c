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
typedef  int /*<<< orphan*/  u8 ;
struct spinand_device {int /*<<< orphan*/ * scratchbuf; int /*<<< orphan*/  spimem; } ;
struct spi_mem_op {int dummy; } ;

/* Variables and functions */
 struct spi_mem_op FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct spi_mem_op*) ; 

__attribute__((used)) static int FUNC2(struct spinand_device *spinand, u8 reg, u8 *val)
{
	struct spi_mem_op op = FUNC0(reg,
						      spinand->scratchbuf);
	int ret;

	ret = FUNC1(spinand->spimem, &op);
	if (ret)
		return ret;

	*val = *spinand->scratchbuf;
	return 0;
}