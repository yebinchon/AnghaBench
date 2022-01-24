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
struct mdio_device {int /*<<< orphan*/  addr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mdio_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mdio_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int FUNC5(struct mdio_device *mdiodev)
{
	int err;

	FUNC0(&mdiodev->dev, "mdio_device_register\n");

	err = FUNC2(mdiodev);
	if (err)
		return err;

	err = FUNC1(&mdiodev->dev);
	if (err) {
		FUNC4("MDIO %d failed to add\n", mdiodev->addr);
		goto out;
	}

	return 0;

 out:
	FUNC3(mdiodev);
	return err;
}