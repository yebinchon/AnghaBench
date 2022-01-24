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
struct TYPE_2__ {int gpio; scalar_t__ active_low; } ;
struct brcms_info {TYPE_1__ radio_led; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(struct brcms_info *wl, bool state)
{
	if (wl->radio_led.gpio == -1)
		return;

	if (wl->radio_led.active_low)
		state = !state;

	if (state)
		FUNC0(wl->radio_led.gpio, 1);
	else
		FUNC0(wl->radio_led.gpio, 0);
}