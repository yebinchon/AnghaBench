#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_device_id {int /*<<< orphan*/  driver_data; } ;
struct spi_device {int max_speed_hz; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dev; struct spi_device* client; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__ spi_ci ; 
 struct spi_device_id* FUNC1 (struct spi_device*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct spi_device *spi)
{
	const struct spi_device_id *id = FUNC1(spi);

	/* don't exceed max specified rate - 1MHz - Limitation of STMPE */
	if (spi->max_speed_hz > 1000000) {
		FUNC0(&spi->dev, "f(sample) %d KHz?\n",
				(spi->max_speed_hz/1000));
		return -EINVAL;
	}

	spi_ci.irq = spi->irq;
	spi_ci.client = spi;
	spi_ci.dev = &spi->dev;

	return FUNC2(&spi_ci, id->driver_data);
}