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
struct au0828_dev {int /*<<< orphan*/  dev_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_DISCONNECTED ; 
 int /*<<< orphan*/  DEV_MISCONFIGURED ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct au0828_dev *dev)
{
	if (FUNC1(DEV_DISCONNECTED, &dev->dev_state)) {
		FUNC0("v4l2 ioctl: device not present\n");
		return -ENODEV;
	}

	if (FUNC1(DEV_MISCONFIGURED, &dev->dev_state)) {
		FUNC0("v4l2 ioctl: device is misconfigured; close and open it again\n");
		return -EIO;
	}
	return 0;
}