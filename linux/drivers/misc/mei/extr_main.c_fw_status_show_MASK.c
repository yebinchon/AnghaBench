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
struct mei_fw_status {int count; int /*<<< orphan*/ * status; } ;
struct mei_device {int /*<<< orphan*/  device_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct mei_device* FUNC1 (struct device*) ; 
 int FUNC2 (struct mei_device*,struct mei_fw_status*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *device,
		struct device_attribute *attr, char *buf)
{
	struct mei_device *dev = FUNC1(device);
	struct mei_fw_status fw_status;
	int err, i;
	ssize_t cnt = 0;

	FUNC3(&dev->device_lock);
	err = FUNC2(dev, &fw_status);
	FUNC4(&dev->device_lock);
	if (err) {
		FUNC0(device, "read fw_status error = %d\n", err);
		return err;
	}

	for (i = 0; i < fw_status.count; i++)
		cnt += FUNC5(buf + cnt, PAGE_SIZE - cnt, "%08X\n",
				fw_status.status[i]);
	return cnt;
}