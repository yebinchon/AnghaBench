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
struct spi_eeprom {int flags; int byte_len; int /*<<< orphan*/  page_size; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {scalar_t__ platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct TYPE_9__ {int read_only; int root_only; int compat; int stride; int word_size; int size; struct at25_data* priv; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; TYPE_1__* base_dev; int /*<<< orphan*/  owner; TYPE_1__* dev; int /*<<< orphan*/  name; } ;
struct at25_data {int addrlen; struct spi_eeprom chip; int /*<<< orphan*/  nvmem; TYPE_2__ nvmem_config; struct spi_device* spi; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT25_RDSR ; 
 int AT25_SR_nRDY ; 
 int EE_ADDR1 ; 
 int EE_ADDR2 ; 
 int EE_ADDR3 ; 
 int EE_READONLY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  at25_ee_read ; 
 int /*<<< orphan*/  at25_ee_write ; 
 int FUNC2 (TYPE_1__*,struct spi_eeprom*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct at25_data* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_device*,struct at25_data*) ; 
 int FUNC10 (struct spi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	struct at25_data	*at25 = NULL;
	struct spi_eeprom	chip;
	int			err;
	int			sr;
	int			addrlen;

	/* Chip description */
	if (!spi->dev.platform_data) {
		err = FUNC2(&spi->dev, &chip);
		if (err)
			return err;
	} else
		chip = *(struct spi_eeprom *)spi->dev.platform_data;

	/* For now we only support 8/16/24 bit addressing */
	if (chip.flags & EE_ADDR1)
		addrlen = 1;
	else if (chip.flags & EE_ADDR2)
		addrlen = 2;
	else if (chip.flags & EE_ADDR3)
		addrlen = 3;
	else {
		FUNC3(&spi->dev, "unsupported address type\n");
		return -EINVAL;
	}

	/* Ping the chip ... the status register is pretty portable,
	 * unlike probing manufacturer IDs.  We do expect that system
	 * firmware didn't write it in the past few milliseconds!
	 */
	sr = FUNC10(spi, AT25_RDSR);
	if (sr < 0 || sr & AT25_SR_nRDY) {
		FUNC3(&spi->dev, "rdsr --> %d (%02x)\n", sr, sr);
		return -ENXIO;
	}

	at25 = FUNC6(&spi->dev, sizeof(struct at25_data), GFP_KERNEL);
	if (!at25)
		return -ENOMEM;

	FUNC8(&at25->lock);
	at25->chip = chip;
	at25->spi = spi;
	FUNC9(spi, at25);
	at25->addrlen = addrlen;

	at25->nvmem_config.name = FUNC5(&spi->dev);
	at25->nvmem_config.dev = &spi->dev;
	at25->nvmem_config.read_only = chip.flags & EE_READONLY;
	at25->nvmem_config.root_only = true;
	at25->nvmem_config.owner = THIS_MODULE;
	at25->nvmem_config.compat = true;
	at25->nvmem_config.base_dev = &spi->dev;
	at25->nvmem_config.reg_read = at25_ee_read;
	at25->nvmem_config.reg_write = at25_ee_write;
	at25->nvmem_config.priv = at25;
	at25->nvmem_config.stride = 4;
	at25->nvmem_config.word_size = 1;
	at25->nvmem_config.size = chip.byte_len;

	at25->nvmem = FUNC7(&spi->dev, &at25->nvmem_config);
	if (FUNC0(at25->nvmem))
		return FUNC1(at25->nvmem);

	FUNC4(&spi->dev, "%d %s %s eeprom%s, pagesize %u\n",
		(chip.byte_len < 1024) ? chip.byte_len : (chip.byte_len / 1024),
		(chip.byte_len < 1024) ? "Byte" : "KByte",
		at25->chip.name,
		(chip.flags & EE_READONLY) ? " (readonly)" : "",
		at25->chip.page_size);
	return 0;
}