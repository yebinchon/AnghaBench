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
typedef  int u16 ;
typedef  int /*<<< orphan*/  t ;
struct spi_transfer {int* tx_buf; int len; int bits_per_word; } ;
struct spi_message {int dummy; } ;
struct eeprom_93xx46_platform_data {int /*<<< orphan*/  (* finish ) (struct eeprom_93xx46_dev*) ;int /*<<< orphan*/  (* prepare ) (struct eeprom_93xx46_dev*) ;} ;
struct eeprom_93xx46_dev {int addrlen; int /*<<< orphan*/  lock; TYPE_1__* spi; struct eeprom_93xx46_platform_data* pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ADDR_ERAL ; 
 int OP_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (struct eeprom_93xx46_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_message*) ; 
 int FUNC9 (TYPE_1__*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC10 (struct eeprom_93xx46_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct eeprom_93xx46_dev*) ; 

__attribute__((used)) static int FUNC12(struct eeprom_93xx46_dev *edev)
{
	struct eeprom_93xx46_platform_data *pd = edev->pdata;
	struct spi_message m;
	struct spi_transfer t;
	int bits, ret;
	u16 cmd_addr;

	cmd_addr = OP_START << edev->addrlen;
	if (edev->addrlen == 7) {
		cmd_addr |= ADDR_ERAL << 1;
		bits = 10;
	} else {
		cmd_addr |= ADDR_ERAL;
		bits = 9;
	}

	if (FUNC2(edev)) {
		cmd_addr <<= 2;
		bits += 2;
	}

	FUNC0(&edev->spi->dev, "eral cmd 0x%04x, %d bits\n", cmd_addr, bits);

	FUNC8(&m);
	FUNC4(&t, 0, sizeof(t));

	t.tx_buf = &cmd_addr;
	t.len = 2;
	t.bits_per_word = bits;
	FUNC7(&t, &m);

	FUNC5(&edev->lock);

	if (edev->pdata->prepare)
		edev->pdata->prepare(edev);

	ret = FUNC9(edev->spi, &m);
	if (ret)
		FUNC1(&edev->spi->dev, "erase error %d\n", ret);
	/* have to wait erase cycle time Tec ms */
	FUNC3(6);

	if (pd->finish)
		pd->finish(edev);

	FUNC6(&edev->lock);
	return ret;
}