#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct spi_nor_hwcaps {int /*<<< orphan*/  mask; } ;
struct TYPE_6__ {scalar_t__ name; } ;
struct spi_nor {scalar_t__ page_size; scalar_t__ bouncebuf_size; TYPE_1__ mtd; int /*<<< orphan*/  bouncebuf; TYPE_2__* dev; struct spi_mem* spimem; } ;
struct spi_mem {struct spi_device* spi; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {char* modalias; TYPE_2__ dev; } ;
struct flash_platform_data {char* type; int /*<<< orphan*/  nr_parts; int /*<<< orphan*/ * parts; scalar_t__ name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  SNOR_HWCAPS_ALL ; 
 struct flash_platform_data* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct spi_nor* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct spi_mem*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_mem*,struct spi_nor*) ; 
 int FUNC7 (struct spi_nor*,char*,struct spi_nor_hwcaps const*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_nor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(struct spi_mem *spimem)
{
	struct spi_device *spi = spimem->spi;
	struct flash_platform_data *data = FUNC0(&spi->dev);
	struct spi_nor *nor;
	/*
	 * Enable all caps by default. The core will mask them after
	 * checking what's really supported using spi_mem_supports_op().
	 */
	const struct spi_nor_hwcaps hwcaps = { .mask = SNOR_HWCAPS_ALL };
	char *flash_name;
	int ret;

	nor = FUNC3(&spi->dev, sizeof(*nor), GFP_KERNEL);
	if (!nor)
		return -ENOMEM;

	nor->spimem = spimem;
	nor->dev = &spi->dev;
	FUNC8(nor, spi->dev.of_node);

	FUNC6(spimem, nor);

	if (data && data->name)
		nor->mtd.name = data->name;

	if (!nor->mtd.name)
		nor->mtd.name = FUNC5(spimem);

	/*
	 * For some (historical?) reason many platforms provide two different
	 * names in flash_platform_data: "name" and "type". Quite often name is
	 * set to "m25p80" and then "type" provides a real chip name.
	 * If that's the case, respect "type" and ignore a "name".
	 */
	if (data && data->type)
		flash_name = data->type;
	else if (!FUNC9(spi->modalias, "spi-nor"))
		flash_name = NULL; /* auto-detect */
	else
		flash_name = spi->modalias;

	ret = FUNC7(nor, flash_name, &hwcaps);
	if (ret)
		return ret;

	/*
	 * None of the existing parts have > 512B pages, but let's play safe
	 * and add this logic so that if anyone ever adds support for such
	 * a NOR we don't end up with buffer overflows.
	 */
	if (nor->page_size > PAGE_SIZE) {
		nor->bouncebuf_size = nor->page_size;
		FUNC1(nor->dev, nor->bouncebuf);
		nor->bouncebuf = FUNC2(nor->dev,
					      nor->bouncebuf_size,
					      GFP_KERNEL);
		if (!nor->bouncebuf)
			return -ENOMEM;
	}

	return FUNC4(&nor->mtd, data ? data->parts : NULL,
				   data ? data->nr_parts : 0);
}