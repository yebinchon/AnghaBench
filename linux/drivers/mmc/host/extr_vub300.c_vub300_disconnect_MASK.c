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
struct vub300_mmc_host {int /*<<< orphan*/  kref; int /*<<< orphan*/ * interface; struct mmc_host* mmc; } ;
struct usb_interface {int dummy; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct vub300_mmc_host* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vub300_delete ; 

__attribute__((used)) static void FUNC6(struct usb_interface *interface)
{				/* NOT irq */
	struct vub300_mmc_host *vub300 = FUNC4(interface);
	if (!vub300 || !vub300->mmc) {
		return;
	} else {
		struct mmc_host *mmc = vub300->mmc;
		if (!vub300->mmc) {
			return;
		} else {
			int ifnum = FUNC0(interface);
			FUNC5(interface, NULL);
			/* prevent more I/O from starting */
			vub300->interface = NULL;
			FUNC1(&vub300->kref, vub300_delete);
			FUNC2(mmc);
			FUNC3("USB vub300 remote SDIO host controller[%d]"
				" now disconnected", ifnum);
			return;
		}
	}
}