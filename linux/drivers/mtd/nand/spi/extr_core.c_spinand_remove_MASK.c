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
struct spinand_device {int dummy; } ;
struct spi_mem {int dummy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mtd_info*) ; 
 struct spinand_device* FUNC1 (struct spi_mem*) ; 
 int /*<<< orphan*/  FUNC2 (struct spinand_device*) ; 
 struct mtd_info* FUNC3 (struct spinand_device*) ; 

__attribute__((used)) static int FUNC4(struct spi_mem *mem)
{
	struct spinand_device *spinand;
	struct mtd_info *mtd;
	int ret;

	spinand = FUNC1(mem);
	mtd = FUNC3(spinand);

	ret = FUNC0(mtd);
	if (ret)
		return ret;

	FUNC2(spinand);

	return 0;
}