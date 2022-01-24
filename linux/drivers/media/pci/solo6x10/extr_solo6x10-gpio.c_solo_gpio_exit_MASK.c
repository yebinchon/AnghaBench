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
struct TYPE_2__ {int /*<<< orphan*/ * label; } ;
struct solo_dev {TYPE_1__ gpio_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct solo_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*) ; 

void FUNC3(struct solo_dev *solo_dev)
{
#ifdef CONFIG_GPIOLIB
	if (solo_dev->gpio_dev.label) {
		gpiochip_remove(&solo_dev->gpio_dev);
		solo_dev->gpio_dev.label = NULL;
	}
#endif
	FUNC1(solo_dev, 0x30);
	FUNC2(solo_dev);
}