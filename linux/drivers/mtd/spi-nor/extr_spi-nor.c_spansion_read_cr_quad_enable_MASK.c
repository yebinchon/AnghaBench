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
struct spi_nor {int* bouncebuf; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int CR_QUAD_EN_SPAN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct spi_nor*) ; 
 int FUNC2 (struct spi_nor*) ; 
 int FUNC3 (struct spi_nor*,int*) ; 

__attribute__((used)) static int FUNC4(struct spi_nor *nor)
{
	struct device *dev = nor->dev;
	u8 *sr_cr = nor->bouncebuf;
	int ret;

	/* Check current Quad Enable bit value. */
	ret = FUNC1(nor);
	if (ret < 0) {
		FUNC0(dev, "error while reading configuration register\n");
		return -EINVAL;
	}

	if (ret & CR_QUAD_EN_SPAN)
		return 0;

	sr_cr[1] = ret | CR_QUAD_EN_SPAN;

	/* Keep the current value of the Status Register. */
	ret = FUNC2(nor);
	if (ret < 0) {
		FUNC0(dev, "error while reading status register\n");
		return -EINVAL;
	}
	sr_cr[0] = ret;

	ret = FUNC3(nor, sr_cr);
	if (ret)
		return ret;

	/* Read back and check it. */
	ret = FUNC1(nor);
	if (!(ret > 0 && (ret & CR_QUAD_EN_SPAN))) {
		FUNC0(nor->dev, "Spansion Quad bit not set\n");
		return -EINVAL;
	}

	return 0;
}