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
struct spi_nor {int* bouncebuf; int (* read_reg ) (struct spi_nor*,int /*<<< orphan*/ ,int*,int) ;scalar_t__ spimem; } ;
struct spi_mem_op {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPINOR_OP_RDFSR ; 
 struct spi_mem_op FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int) ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_ADDR ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_DUMMY ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (scalar_t__,struct spi_mem_op*) ; 
 int FUNC5 (struct spi_nor*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC6(struct spi_nor *nor)
{
	int ret;

	if (nor->spimem) {
		struct spi_mem_op op =
			FUNC0(FUNC1(SPINOR_OP_RDFSR, 1),
				   SPI_MEM_OP_NO_ADDR,
				   SPI_MEM_OP_NO_DUMMY,
				   FUNC2(1, nor->bouncebuf, 1));

		ret = FUNC4(nor->spimem, &op);
	} else {
		ret = nor->read_reg(nor, SPINOR_OP_RDFSR, nor->bouncebuf, 1);
	}

	if (ret < 0) {
		FUNC3("error %d reading FSR\n", ret);
		return ret;
	}

	return nor->bouncebuf[0];
}