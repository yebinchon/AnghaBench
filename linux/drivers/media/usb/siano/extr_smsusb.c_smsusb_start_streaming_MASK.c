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
struct smsusb_device_t {int /*<<< orphan*/ * surbs; } ;

/* Variables and functions */
 int MAX_URBS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct smsusb_device_t*) ; 
 int FUNC2 (struct smsusb_device_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct smsusb_device_t *dev)
{
	int i, rc;

	for (i = 0; i < MAX_URBS; i++) {
		rc = FUNC2(dev, &dev->surbs[i]);
		if (rc < 0) {
			FUNC0("smsusb_submit_urb(...) failed\n");
			FUNC1(dev);
			break;
		}
	}

	return rc;
}