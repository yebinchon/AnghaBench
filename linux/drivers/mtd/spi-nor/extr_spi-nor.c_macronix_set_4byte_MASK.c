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
struct spi_nor {int (* write_reg ) (struct spi_nor*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;scalar_t__ spimem; } ;
struct spi_mem_op {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPINOR_OP_EN4B ; 
 int /*<<< orphan*/  SPINOR_OP_EX4B ; 
 struct spi_mem_op FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_ADDR ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_DATA ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_DUMMY ; 
 int FUNC2 (scalar_t__,struct spi_mem_op*) ; 
 int FUNC3 (struct spi_nor*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct spi_nor *nor, bool enable)
{
	if (nor->spimem) {
		struct spi_mem_op op =
			FUNC0(FUNC1(enable ?
						  SPINOR_OP_EN4B :
						  SPINOR_OP_EX4B,
						  1),
				  SPI_MEM_OP_NO_ADDR,
				  SPI_MEM_OP_NO_DUMMY,
				  SPI_MEM_OP_NO_DATA);

		return FUNC2(nor->spimem, &op);
	}

	return nor->write_reg(nor, enable ? SPINOR_OP_EN4B : SPINOR_OP_EX4B,
			      NULL, 0);
}