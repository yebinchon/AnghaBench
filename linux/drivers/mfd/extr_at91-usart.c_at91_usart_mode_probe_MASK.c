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
typedef  int u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mfd_cell {int dummy; } ;

/* Variables and functions */
#define  AT91_USART_MODE_SERIAL 129 
#define  AT91_USART_MODE_SPI 128 
 int EINVAL ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 struct mfd_cell at91_usart_serial_subdev ; 
 struct mfd_cell at91_usart_spi_subdev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mfd_cell const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	const struct mfd_cell *cell;
	u32 opmode = AT91_USART_MODE_SERIAL;

	FUNC1(&pdev->dev, "atmel,usart-mode", &opmode);

	switch (opmode) {
	case AT91_USART_MODE_SPI:
		cell = &at91_usart_spi_subdev;
		break;
	case AT91_USART_MODE_SERIAL:
		cell = &at91_usart_serial_subdev;
		break;
	default:
		FUNC0(&pdev->dev, "atmel,usart-mode has an invalid value %u\n",
			opmode);
		return -EINVAL;
	}

	return FUNC2(&pdev->dev, PLATFORM_DEVID_AUTO, cell, 1,
			      NULL, 0, NULL);
}