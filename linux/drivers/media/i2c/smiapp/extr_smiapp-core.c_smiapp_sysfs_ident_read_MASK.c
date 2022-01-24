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
struct v4l2_subdev {int dummy; } ;
struct smiapp_module_info {int manufacturer_id; int model_id; int /*<<< orphan*/  revision_number_major; } ;
struct smiapp_sensor {struct smiapp_module_info minfo; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct v4l2_subdev* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct smiapp_sensor* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
			char *buf)
{
	struct v4l2_subdev *subdev = FUNC0(FUNC2(dev));
	struct smiapp_sensor *sensor = FUNC3(subdev);
	struct smiapp_module_info *minfo = &sensor->minfo;

	return FUNC1(buf, PAGE_SIZE, "%2.2x%4.4x%2.2x\n",
			minfo->manufacturer_id, minfo->model_id,
			minfo->revision_number_major) + 1;
}