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
struct lis3lv02d {int /*<<< orphan*/  mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct lis3lv02d* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct lis3lv02d*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct lis3lv02d*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct lis3lv02d *lis3 = FUNC0(dev);
	int x, y, z;

	FUNC2(lis3);
	FUNC3(&lis3->mutex);
	FUNC1(lis3, &x, &y, &z);
	FUNC4(&lis3->mutex);
	return FUNC5(buf, "(%d,%d,%d)\n", x, y, z);
}