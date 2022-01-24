#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pvr2_sysfs {TYPE_1__* class_dev; int /*<<< orphan*/  attr_unit_number; scalar_t__ unit_number_created_ok; int /*<<< orphan*/  attr_v4l_radio_minor_number; scalar_t__ v4l_radio_minor_number_created_ok; int /*<<< orphan*/  attr_v4l_minor_number; scalar_t__ v4l_minor_number_created_ok; int /*<<< orphan*/  attr_bus_info; scalar_t__ bus_info_created_ok; int /*<<< orphan*/  attr_hdw_name; scalar_t__ hdw_name_created_ok; int /*<<< orphan*/  attr_hdw_desc; scalar_t__ hdw_desc_created_ok; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pvr2_sysfs*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_sysfs*) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct pvr2_sysfs *sfp)
{
	struct device *dev;
	if (!sfp->class_dev) return;
#ifdef CONFIG_VIDEO_PVRUSB2_DEBUGIFC
	pvr2_sysfs_tear_down_debugifc(sfp);
#endif /* CONFIG_VIDEO_PVRUSB2_DEBUGIFC */
	FUNC4(sfp);
	if (sfp->hdw_desc_created_ok) {
		FUNC1(sfp->class_dev,
				   &sfp->attr_hdw_desc);
	}
	if (sfp->hdw_name_created_ok) {
		FUNC1(sfp->class_dev,
				   &sfp->attr_hdw_name);
	}
	if (sfp->bus_info_created_ok) {
		FUNC1(sfp->class_dev,
					 &sfp->attr_bus_info);
	}
	if (sfp->v4l_minor_number_created_ok) {
		FUNC1(sfp->class_dev,
					 &sfp->attr_v4l_minor_number);
	}
	if (sfp->v4l_radio_minor_number_created_ok) {
		FUNC1(sfp->class_dev,
					 &sfp->attr_v4l_radio_minor_number);
	}
	if (sfp->unit_number_created_ok) {
		FUNC1(sfp->class_dev,
					 &sfp->attr_unit_number);
	}
	FUNC6("Destroying class_dev id=%p",sfp->class_dev);
	FUNC0(sfp->class_dev, NULL);
	dev = sfp->class_dev->parent;
	sfp->class_dev->parent = NULL;
	FUNC3(dev);
	FUNC2(sfp->class_dev);
	sfp->class_dev = NULL;
}