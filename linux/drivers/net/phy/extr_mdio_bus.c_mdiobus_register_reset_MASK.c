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
struct reset_control {int dummy; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;
struct mdio_device {struct reset_control* reset_ctrl; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTSUPP ; 
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 struct reset_control* FUNC2 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC3(struct mdio_device *mdiodev)
{
	struct reset_control *reset = NULL;

	if (mdiodev->dev.of_node)
		reset = FUNC2(&mdiodev->dev,
							 "phy");
	if (FUNC1(reset) == -ENOENT ||
	    FUNC1(reset) == -ENOTSUPP)
		reset = NULL;
	else if (FUNC0(reset))
		return FUNC1(reset);

	mdiodev->reset_ctrl = reset;

	return 0;
}