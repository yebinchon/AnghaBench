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
struct ngene {int i2c_current_bus; TYPE_1__* card_info; } ;
struct TYPE_2__ {int i2c_access; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ngene*,int,int) ; 

__attribute__((used)) static void FUNC1(struct ngene *dev, int bus)
{
	if (!(dev->card_info->i2c_access & 2))
		return;
	if (dev->i2c_current_bus == bus)
		return;

	switch (bus) {
	case 0:
		FUNC0(dev, 3, 0);
		FUNC0(dev, 2, 1);
		break;

	case 1:
		FUNC0(dev, 2, 0);
		FUNC0(dev, 3, 1);
		break;
	}
	dev->i2c_current_bus = bus;
}