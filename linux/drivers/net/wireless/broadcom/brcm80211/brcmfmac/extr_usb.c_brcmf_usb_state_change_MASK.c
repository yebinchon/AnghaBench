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
struct TYPE_2__ {int state; struct brcmf_bus* bus; } ;
struct brcmf_usbdev_info {TYPE_1__ bus_pub; } ;
struct brcmf_bus {int dummy; } ;

/* Variables and functions */
 int BRCMFMAC_USB_STATE_DOWN ; 
 int BRCMFMAC_USB_STATE_UP ; 
 int /*<<< orphan*/  BRCMF_BUS_DOWN ; 
 int /*<<< orphan*/  BRCMF_BUS_UP ; 
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC2(struct brcmf_usbdev_info *devinfo, int state)
{
	struct brcmf_bus *bcmf_bus = devinfo->bus_pub.bus;

	FUNC1(USB, "Enter, current state=%d, new state=%d\n",
		  devinfo->bus_pub.state, state);

	if (devinfo->bus_pub.state == state)
		return;

	devinfo->bus_pub.state = state;

	/* update state of upper layer */
	if (state == BRCMFMAC_USB_STATE_DOWN) {
		FUNC1(USB, "DBUS is down\n");
		FUNC0(bcmf_bus, BRCMF_BUS_DOWN);
	} else if (state == BRCMFMAC_USB_STATE_UP) {
		FUNC1(USB, "DBUS is up\n");
		FUNC0(bcmf_bus, BRCMF_BUS_UP);
	} else {
		FUNC1(USB, "DBUS current state=%d\n", state);
	}
}