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
struct v4l2_subdev {int dummy; } ;
struct v4l2_device {int dummy; } ;
struct spi_master {int dummy; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct spi_device {TYPE_2__ dev; } ;
struct spi_board_info {scalar_t__* modalias; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 struct v4l2_subdev* FUNC2 (struct spi_device*) ; 
 struct spi_device* FUNC3 (struct spi_master*,struct spi_board_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct v4l2_device*,struct v4l2_subdev*) ; 

struct v4l2_subdev *FUNC7(struct v4l2_device *v4l2_dev,
					struct spi_master *master,
					struct spi_board_info *info)
{
	struct v4l2_subdev *sd = NULL;
	struct spi_device *spi = NULL;

	if (!v4l2_dev)
		return NULL;
	if (info->modalias[0])
		FUNC1(info->modalias);

	spi = FUNC3(master, info);

	if (!spi || !spi->dev.driver)
		goto error;

	if (!FUNC5(spi->dev.driver->owner))
		goto error;

	sd = FUNC2(spi);

	/*
	 * Register with the v4l2_device which increases the module's
	 * use count as well.
	 */
	if (FUNC6(v4l2_dev, sd))
		sd = NULL;

	/* Decrease the module use count to match the first try_module_get. */
	FUNC0(spi->dev.driver->owner);

error:
	/*
	 * If we have a client but no subdev, then something went wrong and
	 * we must unregister the client.
	 */
	if (!sd)
		FUNC4(spi);

	return sd;
}