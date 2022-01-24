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
struct spi_nor {struct device* dev; } ;
struct mtd_info {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct spi_nor* FUNC1 (struct mtd_info*) ; 
 int FUNC2 (struct spi_nor*) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd)
{
	struct spi_nor *nor = FUNC1(mtd);
	struct device *dev = nor->dev;
	int ret;

	/* re-initialize the nor chip */
	ret = FUNC2(nor);
	if (ret)
		FUNC0(dev, "resume() failed\n");
}