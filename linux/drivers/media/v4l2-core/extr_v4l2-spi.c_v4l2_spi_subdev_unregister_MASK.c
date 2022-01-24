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
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fwnode; int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_device*) ; 
 struct spi_device* FUNC1 (struct v4l2_subdev*) ; 

void FUNC2(struct v4l2_subdev *sd)
{
	struct spi_device *spi = FUNC1(sd);

	if (spi && !spi->dev.of_node && !spi->dev.fwnode)
		FUNC0(spi);
}