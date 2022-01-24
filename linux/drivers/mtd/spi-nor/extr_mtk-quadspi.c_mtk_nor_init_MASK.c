#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spi_nor_hwcaps {int mask; } ;
struct TYPE_2__ {char* name; } ;
struct spi_nor {TYPE_1__ mtd; int /*<<< orphan*/  write_reg; int /*<<< orphan*/  write; int /*<<< orphan*/  read_reg; int /*<<< orphan*/  read; struct mtk_nor* priv; int /*<<< orphan*/  dev; } ;
struct mtk_nor {int /*<<< orphan*/  dev; struct spi_nor nor; scalar_t__ base; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_NOR_ENABLE_SF_CMD ; 
 scalar_t__ MTK_NOR_WRPROT_REG ; 
 int SNOR_HWCAPS_PP ; 
 int SNOR_HWCAPS_READ ; 
 int SNOR_HWCAPS_READ_1_1_2 ; 
 int SNOR_HWCAPS_READ_FAST ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_nor_read ; 
 int /*<<< orphan*/  mtk_nor_read_reg ; 
 int /*<<< orphan*/  mtk_nor_write ; 
 int /*<<< orphan*/  mtk_nor_write_reg ; 
 int FUNC1 (struct spi_nor*,int /*<<< orphan*/ *,struct spi_nor_hwcaps const*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_nor*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct mtk_nor *mtk_nor,
			struct device_node *flash_node)
{
	const struct spi_nor_hwcaps hwcaps = {
		.mask = SNOR_HWCAPS_READ |
			SNOR_HWCAPS_READ_FAST |
			SNOR_HWCAPS_READ_1_1_2 |
			SNOR_HWCAPS_PP,
	};
	int ret;
	struct spi_nor *nor;

	/* initialize controller to accept commands */
	FUNC3(MTK_NOR_ENABLE_SF_CMD, mtk_nor->base + MTK_NOR_WRPROT_REG);

	nor = &mtk_nor->nor;
	nor->dev = mtk_nor->dev;
	nor->priv = mtk_nor;
	FUNC2(nor, flash_node);

	/* fill the hooks to spi nor */
	nor->read = mtk_nor_read;
	nor->read_reg = mtk_nor_read_reg;
	nor->write = mtk_nor_write;
	nor->write_reg = mtk_nor_write_reg;
	nor->mtd.name = "mtk_nor";
	/* initialized with NULL */
	ret = FUNC1(nor, NULL, &hwcaps);
	if (ret)
		return ret;

	return FUNC0(&nor->mtd, NULL, 0);
}