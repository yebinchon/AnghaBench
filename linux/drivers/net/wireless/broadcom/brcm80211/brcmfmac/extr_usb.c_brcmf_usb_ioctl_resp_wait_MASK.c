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
struct brcmf_usbdev_info {int /*<<< orphan*/  ctl_completed; int /*<<< orphan*/  ioctl_resp_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOCTL_RESP_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct brcmf_usbdev_info *devinfo)
{
	return FUNC0(devinfo->ioctl_resp_wait,
				  devinfo->ctl_completed, IOCTL_RESP_TIMEOUT);
}