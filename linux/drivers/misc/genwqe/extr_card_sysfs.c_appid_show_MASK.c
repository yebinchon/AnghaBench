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
struct genwqe_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  app_name ;

/* Variables and functions */
 struct genwqe_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct genwqe_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			  char *buf)
{
	char app_name[5];
	struct genwqe_dev *cd = FUNC0(dev);

	FUNC1(cd, app_name, sizeof(app_name));
	return FUNC2(buf, "%s\n", app_name);
}