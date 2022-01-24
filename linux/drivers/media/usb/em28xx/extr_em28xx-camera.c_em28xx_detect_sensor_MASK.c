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
struct em28xx {scalar_t__ em28xx_sensor; TYPE_1__* intf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ EM28XX_NOSENSOR ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct em28xx*) ; 
 int FUNC2 (struct em28xx*) ; 

int FUNC3(struct em28xx *dev)
{
	int ret;

	ret = FUNC1(dev);

	if (dev->em28xx_sensor == EM28XX_NOSENSOR && ret < 0)
		ret = FUNC2(dev);

	/*
	 * NOTE: the Windows driver also probes i2c addresses
	 *       0x22 (Samsung ?) and 0x66 (Kodak ?)
	 */

	if (dev->em28xx_sensor == EM28XX_NOSENSOR && ret < 0) {
		FUNC0(&dev->intf->dev,
			 "No sensor detected\n");
		return -ENODEV;
	}

	return 0;
}