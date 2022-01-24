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
struct mdio_device {scalar_t__ reset_gpio; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 

__attribute__((used)) static int FUNC3(struct mdio_device *mdiodev)
{
	int error;

	/* Deassert the optional reset signal */
	mdiodev->reset_gpio = FUNC1(&mdiodev->dev,
						 "reset", GPIOD_OUT_LOW);
	error = FUNC0(mdiodev->reset_gpio);
	if (error)
		return error;

	if (mdiodev->reset_gpio)
		FUNC2(mdiodev->reset_gpio, "PHY reset");

	return 0;
}