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
struct TYPE_3__ {int gpio; } ;
struct TYPE_4__ {scalar_t__ dev; } ;
struct brcms_info {TYPE_1__ radio_led; TYPE_2__ led_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void FUNC2(struct brcms_info *wl)
{
	if (wl->led_dev.dev)
		FUNC1(&wl->led_dev);
	if (wl->radio_led.gpio != -1)
		FUNC0(wl->radio_led.gpio);
}