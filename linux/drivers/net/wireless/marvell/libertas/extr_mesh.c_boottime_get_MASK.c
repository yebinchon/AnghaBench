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
struct mrvl_mesh_defaults {int boottime; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct device*,struct mrvl_mesh_defaults*) ; 
 int FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
			    struct device_attribute *attr, char *buf)
{
	struct mrvl_mesh_defaults defs;
	int ret;

	ret = FUNC0(dev, &defs);

	if (ret)
		return ret;

	return FUNC1(buf, 12, "%d\n", defs.boottime);
}