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
struct r8152 {int /*<<< orphan*/  flags; TYPE_1__* udev; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8152_UNPLUG ; 
 scalar_t__ USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct r8152 *tp)
{
	if (tp->udev->state == USB_STATE_NOTATTACHED) {
		FUNC0(RTL8152_UNPLUG, &tp->flags);
		FUNC1();
	}
}