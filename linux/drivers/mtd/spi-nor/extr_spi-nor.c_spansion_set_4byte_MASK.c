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
struct spi_nor {int* bouncebuf; int (* write_reg ) (struct spi_nor*,int /*<<< orphan*/ ,int*,int) ;scalar_t__ spimem; } ;
struct spi_mem_op {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPINOR_OP_BRWR ; 
 struct spi_mem_op FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int) ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_ADDR ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_DUMMY ; 
 int FUNC3 (scalar_t__,struct spi_mem_op*) ; 
 int FUNC4 (struct spi_nor*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC5(struct spi_nor *nor, bool enable)
{
	nor->bouncebuf[0] = enable << 7;

	if (nor->spimem) {
		struct spi_mem_op op =
			FUNC0(FUNC1(SPINOR_OP_BRWR, 1),
				   SPI_MEM_OP_NO_ADDR,
				   SPI_MEM_OP_NO_DUMMY,
				   FUNC2(1, nor->bouncebuf, 1));

		return FUNC3(nor->spimem, &op);
	}

	return nor->write_reg(nor, SPINOR_OP_BRWR, nor->bouncebuf, 1);
}