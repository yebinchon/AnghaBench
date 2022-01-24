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
struct hbm_version {int major_version; int minor_version; } ;
struct mei_device {int /*<<< orphan*/  device_lock; struct hbm_version version; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct mei_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *device,
			    struct device_attribute *attr, char *buf)
{
	struct mei_device *dev = FUNC0(device);
	struct hbm_version ver;

	FUNC1(&dev->device_lock);
	ver = dev->version;
	FUNC2(&dev->device_lock);

	return FUNC3(buf, "%u.%u\n", ver.major_version, ver.minor_version);
}