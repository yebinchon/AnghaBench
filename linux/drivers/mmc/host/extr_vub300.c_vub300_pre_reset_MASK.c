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
struct vub300_mmc_host {int /*<<< orphan*/  cmd_mutex; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vub300_mmc_host* FUNC1 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC2(struct usb_interface *intf)
{				/* NOT irq */
	struct vub300_mmc_host *vub300 = FUNC1(intf);
	FUNC0(&vub300->cmd_mutex);
	return 0;
}