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
struct spinand_device {int /*<<< orphan*/  spimem; } ;
struct spi_mem_op {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACRONIX_ECCSR_MASK ; 
 struct spi_mem_op FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_ADDR ; 
 int FUNC4 (int /*<<< orphan*/ ,struct spi_mem_op*) ; 

__attribute__((used)) static int FUNC5(struct spinand_device *spinand, u8 *eccsr)
{
	struct spi_mem_op op = FUNC0(FUNC1(0x7c, 1),
					  SPI_MEM_OP_NO_ADDR,
					  FUNC3(1, 1),
					  FUNC2(1, eccsr, 1));

	int ret = FUNC4(spinand->spimem, &op);
	if (ret)
		return ret;

	*eccsr &= MACRONIX_ECCSR_MASK;
	return 0;
}