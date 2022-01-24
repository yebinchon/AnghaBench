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
 int CR_QUAD_EN_SPAN ; 
 int SR_BP0 ; 
 int SR_BP1 ; 
 int SR_BP2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct spi_nor*) ; 
 int FUNC2 (struct spi_nor*) ; 
 int FUNC3 (struct spi_nor*) ; 
 int FUNC4 (struct spi_nor*,int*) ; 

__attribute__((used)) static int FUNC5(struct spi_nor *nor)
{
	int ret;
	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
	u8 *sr_cr =  nor->bouncebuf;

	/* Check current Quad Enable bit value. */
	ret = FUNC1(nor);
	if (ret < 0) {
		FUNC0(nor->dev,
			"error while reading configuration register\n");
		return ret;
	}

	/*
	 * When the configuration register Quad Enable bit is one, only the
	 * Write Status (01h) command with two data bytes may be used.
	 */
	if (ret & CR_QUAD_EN_SPAN) {
		sr_cr[1] = ret;

		ret = FUNC2(nor);
		if (ret < 0) {
			FUNC0(nor->dev,
				"error while reading status register\n");
			return ret;
		}
		sr_cr[0] = ret & ~mask;

		ret = FUNC4(nor, sr_cr);
		if (ret)
			FUNC0(nor->dev, "16-bit write register failed\n");
		return ret;
	}

	/*
	 * If the Quad Enable bit is zero, use the Write Status (01h) command
	 * with one data byte.
	 */
	return FUNC3(nor);
}