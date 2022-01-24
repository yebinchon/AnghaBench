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
struct mdio_device {int /*<<< orphan*/  dev; } ;
struct lan9303_mdio {int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 struct lan9303_mdio* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mdio_device *mdiodev)
{
	struct lan9303_mdio *sw_dev = FUNC0(&mdiodev->dev);

	if (!sw_dev)
		return;

	FUNC1(&sw_dev->chip);
}