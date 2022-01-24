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
struct spi_nor {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int SR_QUAD_EN_MX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct spi_nor*) ; 
 int FUNC2 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_nor*,int) ; 

__attribute__((used)) static int FUNC5(struct spi_nor *nor)
{
	int ret, val;

	val = FUNC1(nor);
	if (val < 0)
		return val;
	if (val & SR_QUAD_EN_MX)
		return 0;

	FUNC3(nor);

	FUNC4(nor, val | SR_QUAD_EN_MX);

	ret = FUNC2(nor);
	if (ret)
		return ret;

	ret = FUNC1(nor);
	if (!(ret > 0 && (ret & SR_QUAD_EN_MX))) {
		FUNC0(nor->dev, "Macronix Quad bit not set\n");
		return -EINVAL;
	}

	return 0;
}