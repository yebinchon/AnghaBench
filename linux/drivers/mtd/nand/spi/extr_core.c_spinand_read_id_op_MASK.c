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
struct spinand_device {int /*<<< orphan*/  scratchbuf; int /*<<< orphan*/  spimem; } ;
struct spi_mem_op {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPINAND_MAX_ID_LEN ; 
 struct spi_mem_op FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct spi_mem_op*) ; 

__attribute__((used)) static int FUNC3(struct spinand_device *spinand, u8 *buf)
{
	struct spi_mem_op op = FUNC0(0, spinand->scratchbuf,
						 SPINAND_MAX_ID_LEN);
	int ret;

	ret = FUNC2(spinand->spimem, &op);
	if (!ret)
		FUNC1(buf, spinand->scratchbuf, SPINAND_MAX_ID_LEN);

	return ret;
}