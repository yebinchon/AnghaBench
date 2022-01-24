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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct flash_info {int flags; int /*<<< orphan*/  pageoffset; int /*<<< orphan*/  pagesize; int /*<<< orphan*/  nr_pages; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct flash_info*) ; 
 int FUNC1 (struct flash_info*) ; 
 int SUP_POW2PS ; 
 int FUNC2 (struct spi_device*,char*,int,int,int) ; 
 int FUNC3 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 
 int FUNC4 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 struct flash_info* FUNC7 (struct spi_device*) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	int status;
	struct flash_info	*info;

	/*
	 * Try to detect dataflash by JEDEC ID.
	 * If it succeeds we know we have either a C or D part.
	 * D will support power of 2 pagesize option.
	 * Both support the security register, though with different
	 * write procedures.
	 */
	info = FUNC7(spi);
	if (FUNC0(info))
		return FUNC1(info);
	if (info != NULL)
		return FUNC3(spi, info->name, info->nr_pages,
				info->pagesize, info->pageoffset,
				(info->flags & SUP_POW2PS) ? 'd' : 'c');

	/*
	 * Older chips support only legacy commands, identifing
	 * capacity using bits in the status byte.
	 */
	status = FUNC4(spi);
	if (status <= 0 || status == 0xff) {
		FUNC5(&spi->dev, "status error %d\n", status);
		if (status == 0 || status == 0xff)
			status = -ENODEV;
		return status;
	}

	/* if there's a device there, assume it's dataflash.
	 * board setup should have set spi->max_speed_max to
	 * match f(car) for continuous reads, mode 0 or 3.
	 */
	switch (status & 0x3c) {
	case 0x0c:	/* 0 0 1 1 x x */
		status = FUNC2(spi, "AT45DB011B", 512, 264, 9);
		break;
	case 0x14:	/* 0 1 0 1 x x */
		status = FUNC2(spi, "AT45DB021B", 1024, 264, 9);
		break;
	case 0x1c:	/* 0 1 1 1 x x */
		status = FUNC2(spi, "AT45DB041x", 2048, 264, 9);
		break;
	case 0x24:	/* 1 0 0 1 x x */
		status = FUNC2(spi, "AT45DB081B", 4096, 264, 9);
		break;
	case 0x2c:	/* 1 0 1 1 x x */
		status = FUNC2(spi, "AT45DB161x", 4096, 528, 10);
		break;
	case 0x34:	/* 1 1 0 1 x x */
		status = FUNC2(spi, "AT45DB321x", 8192, 528, 10);
		break;
	case 0x38:	/* 1 1 1 x x x */
	case 0x3c:
		status = FUNC2(spi, "AT45DB642x", 8192, 1056, 11);
		break;
	/* obsolete AT45DB1282 not (yet?) supported */
	default:
		FUNC6(&spi->dev, "unsupported device (%x)\n",
				status & 0x3c);
		status = -ENODEV;
	}

	if (status < 0)
		FUNC5(&spi->dev, "add_dataflash --> %d\n", status);

	return status;
}