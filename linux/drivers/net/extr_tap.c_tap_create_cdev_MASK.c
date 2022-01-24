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
struct module {int dummy; } ;
struct cdev {struct module* owner; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  TAP_NUM_DEVS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tap_fops ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct cdev *tap_cdev, dev_t *tap_major,
		    const char *device_name, struct module *module)
{
	int err;

	err = FUNC0(tap_major, 0, TAP_NUM_DEVS, device_name);
	if (err)
		goto out1;

	FUNC3(tap_cdev, &tap_fops);
	tap_cdev->owner = module;
	err = FUNC1(tap_cdev, *tap_major, TAP_NUM_DEVS);
	if (err)
		goto out2;

	err =  FUNC4(*tap_major, device_name);
	if (err)
		goto out3;

	return 0;

out3:
	FUNC2(tap_cdev);
out2:
	FUNC5(*tap_major, TAP_NUM_DEVS);
out1:
	return err;
}