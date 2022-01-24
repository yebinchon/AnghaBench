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
struct spi_nor {int (* write_reg ) (struct spi_nor*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  dev; scalar_t__ spimem; } ;
struct spi_mem_op {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SPINOR_OP_WRSR ; 
 struct spi_mem_op FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_ADDR ; 
 int /*<<< orphan*/  SPI_MEM_OP_NO_DUMMY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (scalar_t__,struct spi_mem_op*) ; 
 int FUNC5 (struct spi_nor*) ; 
 int FUNC6 (struct spi_nor*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_nor*) ; 

__attribute__((used)) static int FUNC8(struct spi_nor *nor, u8 *sr_cr)
{
	int ret;

	FUNC7(nor);

	if (nor->spimem) {
		struct spi_mem_op op =
			FUNC0(FUNC1(SPINOR_OP_WRSR, 1),
				   SPI_MEM_OP_NO_ADDR,
				   SPI_MEM_OP_NO_DUMMY,
				   FUNC2(2, sr_cr, 1));

		ret = FUNC4(nor->spimem, &op);
	} else {
		ret = nor->write_reg(nor, SPINOR_OP_WRSR, sr_cr, 2);
	}

	if (ret < 0) {
		FUNC3(nor->dev,
			"error while writing configuration register\n");
		return -EINVAL;
	}

	ret = FUNC5(nor);
	if (ret) {
		FUNC3(nor->dev,
			"timeout while writing configuration register\n");
		return ret;
	}

	return 0;
}