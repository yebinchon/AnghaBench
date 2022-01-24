#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev_ops {int dummy; } ;
struct v4l2_subdev {int /*<<< orphan*/  name; TYPE_2__* dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct spi_device {TYPE_2__ dev; } ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_SUBDEV_FL_IS_SPI ; 
 char* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,struct v4l2_subdev_ops const*) ; 

void FUNC5(struct v4l2_subdev *sd, struct spi_device *spi,
			  const struct v4l2_subdev_ops *ops)
{
	FUNC4(sd, ops);
	sd->flags |= V4L2_SUBDEV_FL_IS_SPI;
	/* the owner is the same as the spi_device's driver owner */
	sd->owner = spi->dev.driver->owner;
	sd->dev = &spi->dev;
	/* spi_device and v4l2_subdev point to one another */
	FUNC3(sd, spi);
	FUNC2(spi, sd);
	/* initialize name */
	FUNC1(sd->name, sizeof(sd->name), "%s %s",
		 spi->dev.driver->name, FUNC0(&spi->dev));
}