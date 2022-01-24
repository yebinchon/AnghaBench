#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {struct eeprom_93xx46_platform_data* platform_data; struct device_node* of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct of_device_id {struct eeprom_93xx46_devtype_data* data; } ;
struct eeprom_93xx46_platform_data {int /*<<< orphan*/  quirks; int /*<<< orphan*/  select; int /*<<< orphan*/  finish; int /*<<< orphan*/  prepare; int /*<<< orphan*/  flags; } ;
struct eeprom_93xx46_devtype_data {int /*<<< orphan*/  quirks; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EE_ADDR16 ; 
 int /*<<< orphan*/  EE_ADDR8 ; 
 int /*<<< orphan*/  EE_READONLY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct eeprom_93xx46_platform_data* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eeprom_93xx46_of_table ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (struct device_node*,char*) ; 
 int FUNC8 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  select_assert ; 
 int /*<<< orphan*/  select_deassert ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	const struct of_device_id *of_id =
		FUNC6(eeprom_93xx46_of_table, &spi->dev);
	struct device_node *np = spi->dev.of_node;
	struct eeprom_93xx46_platform_data *pd;
	u32 tmp;
	int ret;

	pd = FUNC4(&spi->dev, sizeof(*pd), GFP_KERNEL);
	if (!pd)
		return -ENOMEM;

	ret = FUNC8(np, "data-size", &tmp);
	if (ret < 0) {
		FUNC2(&spi->dev, "data-size property not found\n");
		return ret;
	}

	if (tmp == 8) {
		pd->flags |= EE_ADDR8;
	} else if (tmp == 16) {
		pd->flags |= EE_ADDR16;
	} else {
		FUNC2(&spi->dev, "invalid data-size (%d)\n", tmp);
		return -EINVAL;
	}

	if (FUNC7(np, "read-only"))
		pd->flags |= EE_READONLY;

	pd->select = FUNC3(&spi->dev, "select",
					     GPIOD_OUT_LOW);
	if (FUNC0(pd->select))
		return FUNC1(pd->select);

	pd->prepare = select_assert;
	pd->finish = select_deassert;
	FUNC5(pd->select, 0);

	if (of_id->data) {
		const struct eeprom_93xx46_devtype_data *data = of_id->data;

		pd->quirks = data->quirks;
	}

	spi->dev.platform_data = pd;

	return 0;
}