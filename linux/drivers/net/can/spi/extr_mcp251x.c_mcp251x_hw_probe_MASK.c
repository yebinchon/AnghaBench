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
typedef  int u8 ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CANCTRL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct spi_device*) ; 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	u8 ctrl;
	int ret;

	ret = FUNC1(spi);
	if (ret)
		return ret;

	ctrl = FUNC2(spi, CANCTRL);

	FUNC0(&spi->dev, "CANCTRL 0x%02x\n", ctrl);

	/* Check for power up default value */
	if ((ctrl & 0x17) != 0x07)
		return -ENODEV;

	return 0;
}