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
struct v4l2_subdev {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct msi001_dev {int /*<<< orphan*/  hdl; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct msi001_dev*) ; 
 struct msi001_dev* FUNC2 (struct v4l2_subdev*) ; 
 struct v4l2_subdev* FUNC3 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct spi_device *spi)
{
	struct v4l2_subdev *sd = FUNC3(spi);
	struct msi001_dev *dev = FUNC2(sd);

	FUNC0(&spi->dev, "\n");

	/*
	 * Registered by v4l2_spi_new_subdev() from master driver, but we must
	 * unregister it from here. Weird.
	 */
	FUNC5(&dev->sd);
	FUNC4(&dev->hdl);
	FUNC1(dev);
	return 0;
}