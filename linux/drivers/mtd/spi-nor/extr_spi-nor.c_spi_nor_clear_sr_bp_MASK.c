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
struct spi_nor {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SR_BP0 ; 
 int SR_BP1 ; 
 int SR_BP2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct spi_nor*) ; 
 int FUNC2 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_nor*) ; 
 int FUNC4 (struct spi_nor*,int) ; 

__attribute__((used)) static int FUNC5(struct spi_nor *nor)
{
	int ret;
	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;

	ret = FUNC1(nor);
	if (ret < 0) {
		FUNC0(nor->dev, "error while reading status register\n");
		return ret;
	}

	FUNC3(nor);

	ret = FUNC4(nor, ret & ~mask);
	if (ret) {
		FUNC0(nor->dev, "write to status register failed\n");
		return ret;
	}

	ret = FUNC2(nor);
	if (ret)
		FUNC0(nor->dev, "timeout while writing status register\n");
	return ret;
}