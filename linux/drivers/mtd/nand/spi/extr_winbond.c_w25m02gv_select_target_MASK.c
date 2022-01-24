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
struct spinand_device {unsigned int* scratchbuf; int /*<<< orphan*/  spimem; } ;
struct spi_mem_op {int dummy; } ;

/* Variables and functions */
 struct spi_mem_op FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int*,int) ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_ADDR ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_DUMMY ; 
 int FUNC3 (int /*<<< orphan*/ ,struct spi_mem_op*) ; 

__attribute__((used)) static int FUNC4(struct spinand_device *spinand,
				  unsigned int target)
{
	struct spi_mem_op op = FUNC0(FUNC1(0xc2, 1),
					  SPI_MEM_OP_NO_ADDR,
					  SPI_MEM_OP_NO_DUMMY,
					  FUNC2(1,
							spinand->scratchbuf,
							1));

	*spinand->scratchbuf = target;
	return FUNC3(spinand->spimem, &op);
}