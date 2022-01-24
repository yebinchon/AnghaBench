#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct eeprom_93xx46_platform_data* platform_data; scalar_t__ of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct eeprom_93xx46_platform_data {int flags; } ;
struct TYPE_9__ {int read_only; int root_only; int compat; int stride; int word_size; int size; struct eeprom_93xx46_dev* priv; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; TYPE_1__* base_dev; int /*<<< orphan*/  owner; TYPE_1__* dev; int /*<<< orphan*/  name; } ;
struct eeprom_93xx46_dev {int addrlen; int size; int /*<<< orphan*/  nvmem; TYPE_2__ nvmem_config; struct eeprom_93xx46_platform_data* pdata; struct spi_device* spi; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EE_ADDR16 ; 
 int EE_ADDR8 ; 
 int EE_READONLY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  dev_attr_erase ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct eeprom_93xx46_dev* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC8 (struct spi_device*) ; 
 int /*<<< orphan*/  eeprom_93xx46_read ; 
 int /*<<< orphan*/  eeprom_93xx46_write ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct eeprom_93xx46_dev*) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	struct eeprom_93xx46_platform_data *pd;
	struct eeprom_93xx46_dev *edev;
	int err;

	if (spi->dev.of_node) {
		err = FUNC8(spi);
		if (err < 0)
			return err;
	}

	pd = spi->dev.platform_data;
	if (!pd) {
		FUNC2(&spi->dev, "missing platform data\n");
		return -ENODEV;
	}

	edev = FUNC6(&spi->dev, sizeof(*edev), GFP_KERNEL);
	if (!edev)
		return -ENOMEM;

	if (pd->flags & EE_ADDR8)
		edev->addrlen = 7;
	else if (pd->flags & EE_ADDR16)
		edev->addrlen = 6;
	else {
		FUNC2(&spi->dev, "unspecified address type\n");
		return -EINVAL;
	}

	FUNC9(&edev->lock);

	edev->spi = spi;
	edev->pdata = pd;

	edev->size = 128;
	edev->nvmem_config.name = FUNC4(&spi->dev);
	edev->nvmem_config.dev = &spi->dev;
	edev->nvmem_config.read_only = pd->flags & EE_READONLY;
	edev->nvmem_config.root_only = true;
	edev->nvmem_config.owner = THIS_MODULE;
	edev->nvmem_config.compat = true;
	edev->nvmem_config.base_dev = &spi->dev;
	edev->nvmem_config.reg_read = eeprom_93xx46_read;
	edev->nvmem_config.reg_write = eeprom_93xx46_write;
	edev->nvmem_config.priv = edev;
	edev->nvmem_config.stride = 4;
	edev->nvmem_config.word_size = 1;
	edev->nvmem_config.size = edev->size;

	edev->nvmem = FUNC7(&spi->dev, &edev->nvmem_config);
	if (FUNC0(edev->nvmem))
		return FUNC1(edev->nvmem);

	FUNC3(&spi->dev, "%d-bit eeprom %s\n",
		(pd->flags & EE_ADDR8) ? 8 : 16,
		(pd->flags & EE_READONLY) ? "(readonly)" : "");

	if (!(pd->flags & EE_READONLY)) {
		if (FUNC5(&spi->dev, &dev_attr_erase))
			FUNC2(&spi->dev, "can't create erase interface\n");
	}

	FUNC10(spi, edev);
	return 0;
}