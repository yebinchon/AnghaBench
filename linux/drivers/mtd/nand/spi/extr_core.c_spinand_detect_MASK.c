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
struct TYPE_6__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct spinand_device {TYPE_5__* spimem; TYPE_3__* manufacturer; int /*<<< orphan*/  select_target; TYPE_1__ id; } ;
struct TYPE_7__ {int ntargets; } ;
struct nand_device {TYPE_2__ memorg; } ;
struct device {int dummy; } ;
struct TYPE_10__ {TYPE_4__* spi; } ;
struct TYPE_9__ {struct device dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SPINAND_MAX_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 int FUNC2 (struct nand_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_device*) ; 
 int FUNC5 (struct nand_device*) ; 
 int FUNC6 (struct spinand_device*) ; 
 int FUNC7 (struct spinand_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct spinand_device*) ; 
 struct nand_device* FUNC9 (struct spinand_device*) ; 

__attribute__((used)) static int FUNC10(struct spinand_device *spinand)
{
	struct device *dev = &spinand->spimem->spi->dev;
	struct nand_device *nand = FUNC9(spinand);
	int ret;

	ret = FUNC8(spinand);
	if (ret)
		return ret;

	ret = FUNC7(spinand, spinand->id.data);
	if (ret)
		return ret;

	spinand->id.len = SPINAND_MAX_ID_LEN;

	ret = FUNC6(spinand);
	if (ret) {
		FUNC0(dev, "unknown raw ID %*phN\n", SPINAND_MAX_ID_LEN,
			spinand->id.data);
		return ret;
	}

	if (nand->memorg.ntargets > 1 && !spinand->select_target) {
		FUNC0(dev,
			"SPI NANDs with more than one die must implement ->select_target()\n");
		return -EINVAL;
	}

	FUNC1(&spinand->spimem->spi->dev,
		 "%s SPI NAND was found.\n", spinand->manufacturer->name);
	FUNC1(&spinand->spimem->spi->dev,
		 "%llu MiB, block size: %zu KiB, page size: %zu, OOB size: %u\n",
		 FUNC5(nand) >> 20, FUNC2(nand) >> 10,
		 FUNC3(nand), FUNC4(nand));

	return 0;
}