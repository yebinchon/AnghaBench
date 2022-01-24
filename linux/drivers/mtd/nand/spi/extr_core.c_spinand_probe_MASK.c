#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct spinand_device {int /*<<< orphan*/  lock; struct spi_mem* spimem; } ;
struct spi_mem {TYPE_2__* spi; } ;
struct TYPE_4__ {TYPE_3__* parent; } ;
struct mtd_info {TYPE_1__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_5__ {TYPE_3__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct spinand_device* FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_mem*,struct spinand_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct spinand_device*) ; 
 int FUNC5 (struct spinand_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct spinand_device*,int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC7 (struct spinand_device*) ; 

__attribute__((used)) static int FUNC8(struct spi_mem *mem)
{
	struct spinand_device *spinand;
	struct mtd_info *mtd;
	int ret;

	spinand = FUNC0(&mem->spi->dev, sizeof(*spinand),
			       GFP_KERNEL);
	if (!spinand)
		return -ENOMEM;

	spinand->spimem = mem;
	FUNC3(mem, spinand);
	FUNC6(spinand, mem->spi->dev.of_node);
	FUNC2(&spinand->lock);
	mtd = FUNC7(spinand);
	mtd->dev.parent = &mem->spi->dev;

	ret = FUNC5(spinand);
	if (ret)
		return ret;

	ret = FUNC1(mtd, NULL, 0);
	if (ret)
		goto err_spinand_cleanup;

	return 0;

err_spinand_cleanup:
	FUNC4(spinand);

	return ret;
}