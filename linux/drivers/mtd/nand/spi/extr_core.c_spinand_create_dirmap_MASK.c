#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * read_cache; int /*<<< orphan*/ * update_cache; } ;
struct spinand_device {TYPE_4__* dirmaps; TYPE_5__* spimem; TYPE_2__ op_templates; } ;
struct spi_mem_dirmap_info {unsigned int offset; int /*<<< orphan*/  op_tmpl; scalar_t__ length; } ;
struct spi_mem_dirmap_desc {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  pagesize; } ;
struct nand_device {TYPE_1__ memorg; } ;
struct TYPE_10__ {TYPE_3__* spi; } ;
struct TYPE_9__ {struct spi_mem_dirmap_desc* rdesc; struct spi_mem_dirmap_desc* wdesc; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct spi_mem_dirmap_desc*) ; 
 int FUNC1 (struct spi_mem_dirmap_desc*) ; 
 struct spi_mem_dirmap_desc* FUNC2 (int /*<<< orphan*/ *,TYPE_5__*,struct spi_mem_dirmap_info*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct nand_device*) ; 
 scalar_t__ FUNC5 (struct nand_device*) ; 
 struct nand_device* FUNC6 (struct spinand_device*) ; 

__attribute__((used)) static int FUNC7(struct spinand_device *spinand,
				 unsigned int plane)
{
	struct nand_device *nand = FUNC6(spinand);
	struct spi_mem_dirmap_info info = {
		.length = FUNC4(nand) +
			  FUNC5(nand),
	};
	struct spi_mem_dirmap_desc *desc;

	/* The plane number is passed in MSB just above the column address */
	info.offset = plane << FUNC3(nand->memorg.pagesize);

	info.op_tmpl = *spinand->op_templates.update_cache;
	desc = FUNC2(&spinand->spimem->spi->dev,
					  spinand->spimem, &info);
	if (FUNC0(desc))
		return FUNC1(desc);

	spinand->dirmaps[plane].wdesc = desc;

	info.op_tmpl = *spinand->op_templates.read_cache;
	desc = FUNC2(&spinand->spimem->spi->dev,
					  spinand->spimem, &info);
	if (FUNC0(desc))
		return FUNC1(desc);

	spinand->dirmaps[plane].rdesc = desc;

	return 0;
}