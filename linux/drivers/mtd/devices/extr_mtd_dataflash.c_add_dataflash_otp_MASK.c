#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {int chip_select; TYPE_3__ dev; TYPE_1__* master; } ;
struct TYPE_6__ {TYPE_3__* parent; } ;
struct mtd_info {int size; int erasesize; int writesize; TYPE_2__ dev; struct dataflash* priv; int /*<<< orphan*/  _write; int /*<<< orphan*/  _read; int /*<<< orphan*/  _erase; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; scalar_t__ name; } ;
struct flash_platform_data {int /*<<< orphan*/  nr_parts; int /*<<< orphan*/ * parts; scalar_t__ name; } ;
struct dataflash {int page_size; int page_offset; scalar_t__ name; struct mtd_info mtd; struct spi_device* spi; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int bus_num; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MTD_DATAFLASH ; 
 int /*<<< orphan*/  MTD_WRITEABLE ; 
 int /*<<< orphan*/  dataflash_erase ; 
 int /*<<< orphan*/  dataflash_read ; 
 int /*<<< orphan*/  dataflash_write ; 
 struct flash_platform_data* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,char*,long long,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dataflash*) ; 
 struct dataflash* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mtd_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (struct mtd_info*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*,struct dataflash*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,int,int,char*) ; 

__attribute__((used)) static int FUNC10(struct spi_device *spi, char *name, int nr_pages,
			     int pagesize, int pageoffset, char revision)
{
	struct dataflash		*priv;
	struct mtd_info			*device;
	struct flash_platform_data	*pdata = FUNC0(&spi->dev);
	char				*otp_tag = "";
	int				err = 0;

	priv = FUNC3(sizeof *priv, GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC6(&priv->lock);
	priv->spi = spi;
	priv->page_size = pagesize;
	priv->page_offset = pageoffset;

	/* name must be usable with cmdlinepart */
	FUNC9(priv->name, "spi%d.%d-%s",
			spi->master->bus_num, spi->chip_select,
			name);

	device = &priv->mtd;
	device->name = (pdata && pdata->name) ? pdata->name : priv->name;
	device->size = nr_pages * pagesize;
	device->erasesize = pagesize;
	device->writesize = pagesize;
	device->type = MTD_DATAFLASH;
	device->flags = MTD_WRITEABLE;
	device->_erase = dataflash_erase;
	device->_read = dataflash_read;
	device->_write = dataflash_write;
	device->priv = priv;

	device->dev.parent = &spi->dev;
	FUNC5(device, spi->dev.of_node);

	if (revision >= 'c')
		otp_tag = FUNC7(device, revision);

	FUNC1(&spi->dev, "%s (%lld KBytes) pagesize %d bytes%s\n",
			name, (long long)((device->size + 1023) >> 10),
			pagesize, otp_tag);
	FUNC8(spi, priv);

	err = FUNC4(device,
			pdata ? pdata->parts : NULL,
			pdata ? pdata->nr_parts : 0);

	if (!err)
		return 0;

	FUNC2(priv);
	return err;
}