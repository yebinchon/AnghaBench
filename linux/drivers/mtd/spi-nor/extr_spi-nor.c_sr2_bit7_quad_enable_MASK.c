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
typedef  int u8 ;
struct spi_nor {int* bouncebuf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int SR2_QUAD_EN_BIT7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct spi_nor*,int*) ; 
 int FUNC2 (struct spi_nor*) ; 
 int FUNC3 (struct spi_nor*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_nor*) ; 

__attribute__((used)) static int FUNC5(struct spi_nor *nor)
{
	u8 *sr2 = nor->bouncebuf;
	int ret;

	/* Check current Quad Enable bit value. */
	ret = FUNC1(nor, sr2);
	if (ret)
		return ret;
	if (*sr2 & SR2_QUAD_EN_BIT7)
		return 0;

	/* Update the Quad Enable bit. */
	*sr2 |= SR2_QUAD_EN_BIT7;

	FUNC4(nor);

	ret = FUNC3(nor, sr2);
	if (ret < 0) {
		FUNC0(nor->dev, "error while writing status register 2\n");
		return -EINVAL;
	}

	ret = FUNC2(nor);
	if (ret < 0) {
		FUNC0(nor->dev, "timeout while writing status register 2\n");
		return ret;
	}

	/* Read back and check it. */
	ret = FUNC1(nor, sr2);
	if (!(ret > 0 && (*sr2 & SR2_QUAD_EN_BIT7))) {
		FUNC0(nor->dev, "SR2 Quad bit not set\n");
		return -EINVAL;
	}

	return 0;
}