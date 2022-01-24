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
struct spi_nor {int (* write_reg ) (struct spi_nor*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/ * bouncebuf; scalar_t__ spimem; } ;
struct spi_mem_op {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPINOR_OP_WRSR ; 
 struct spi_mem_op FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_ADDR ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_DUMMY ; 
 int FUNC3 (scalar_t__,struct spi_mem_op*) ; 
 int FUNC4 (struct spi_nor*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct spi_nor *nor, u8 val)
{
	nor->bouncebuf[0] = val;
	if (nor->spimem) {
		struct spi_mem_op op =
			FUNC0(FUNC1(SPINOR_OP_WRSR, 1),
				   SPI_MEM_OP_NO_ADDR,
				   SPI_MEM_OP_NO_DUMMY,
				   FUNC2(1, nor->bouncebuf, 1));

		return FUNC3(nor->spimem, &op);
	}

	return nor->write_reg(nor, SPINOR_OP_WRSR, nor->bouncebuf, 1);
}