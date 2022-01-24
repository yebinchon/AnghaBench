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
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;
struct brcmf_usbdev_info {TYPE_1__ bus_pub; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct brcmf_usbdev_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_usbdev_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct brcmf_usbdev_info *devinfo)
{
	if (!devinfo)
		return;
	FUNC0(USB, "Enter, bus_pub %p\n", devinfo);

	FUNC1(devinfo->dev);
	FUNC2(devinfo->dev);
	FUNC4(devinfo->bus_pub.bus);
	FUNC3(devinfo);
}