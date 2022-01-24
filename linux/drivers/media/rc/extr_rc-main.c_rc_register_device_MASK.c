#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/ ** groups; } ;
struct rc_dev {int minor; scalar_t__ driver_type; int registered; scalar_t__ allowed_protocols; char* driver_name; int /*<<< orphan*/  rc_map; TYPE_1__ dev; scalar_t__ device_name; int /*<<< orphan*/ ** sysfs_groups; scalar_t__ s_wakeup_filter; scalar_t__ s_filter; int /*<<< orphan*/  change_protocol; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RC_DEV_MAX ; 
 scalar_t__ RC_DRIVER_IR_RAW ; 
 scalar_t__ RC_DRIVER_IR_RAW_TX ; 
 scalar_t__ RC_DRIVER_SCANCODE ; 
 scalar_t__ RC_PROTO_BIT_CEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct rc_dev*) ; 
 int FUNC12 (struct rc_dev*) ; 
 int FUNC13 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 char* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rc_dev_filter_attr_grp ; 
 int /*<<< orphan*/  rc_dev_ro_protocol_attr_grp ; 
 int /*<<< orphan*/  rc_dev_rw_protocol_attr_grp ; 
 int /*<<< orphan*/  rc_dev_wakeup_filter_attr_grp ; 
 int /*<<< orphan*/  FUNC16 (struct rc_dev*) ; 
 int /*<<< orphan*/  rc_ida ; 
 int FUNC17 (struct rc_dev*) ; 
 int FUNC18 (struct rc_dev*) ; 

int FUNC19(struct rc_dev *dev)
{
	const char *path;
	int attr = 0;
	int minor;
	int rc;

	if (!dev)
		return -EINVAL;

	minor = FUNC6(&rc_ida, 0, RC_DEV_MAX, GFP_KERNEL);
	if (minor < 0)
		return minor;

	dev->minor = minor;
	FUNC3(&dev->dev, "rc%u", dev->minor);
	FUNC2(&dev->dev, dev);

	dev->dev.groups = dev->sysfs_groups;
	if (dev->driver_type == RC_DRIVER_SCANCODE && !dev->change_protocol)
		dev->sysfs_groups[attr++] = &rc_dev_ro_protocol_attr_grp;
	else if (dev->driver_type != RC_DRIVER_IR_RAW_TX)
		dev->sysfs_groups[attr++] = &rc_dev_rw_protocol_attr_grp;
	if (dev->s_filter)
		dev->sysfs_groups[attr++] = &rc_dev_filter_attr_grp;
	if (dev->s_wakeup_filter)
		dev->sysfs_groups[attr++] = &rc_dev_wakeup_filter_attr_grp;
	dev->sysfs_groups[attr++] = NULL;

	if (dev->driver_type == RC_DRIVER_IR_RAW) {
		rc = FUNC12(dev);
		if (rc < 0)
			goto out_minor;
	}

	if (dev->driver_type != RC_DRIVER_IR_RAW_TX) {
		rc = FUNC17(dev);
		if (rc)
			goto out_raw;
	}

	rc = FUNC4(&dev->dev);
	if (rc)
		goto out_rx_free;

	path = FUNC15(&dev->dev.kobj, GFP_KERNEL);
	FUNC1(&dev->dev, "%s as %s\n",
		 dev->device_name ?: "Unspecified device", path ?: "N/A");
	FUNC14(path);

	dev->registered = true;

	if (dev->driver_type != RC_DRIVER_IR_RAW_TX) {
		rc = FUNC18(dev);
		if (rc)
			goto out_dev;
	}

	/* Ensure that the lirc kfifo is setup before we start the thread */
	if (dev->allowed_protocols != RC_PROTO_BIT_CEC) {
		rc = FUNC9(dev);
		if (rc < 0)
			goto out_rx;
	}

	if (dev->driver_type == RC_DRIVER_IR_RAW) {
		rc = FUNC13(dev);
		if (rc < 0)
			goto out_lirc;
	}

	FUNC0(&dev->dev, "Registered rc%u (driver: %s)\n", dev->minor,
		dev->driver_name ? dev->driver_name : "unknown");

	return 0;

out_lirc:
	if (dev->allowed_protocols != RC_PROTO_BIT_CEC)
		FUNC10(dev);
out_rx:
	FUNC16(dev);
out_dev:
	FUNC5(&dev->dev);
out_rx_free:
	FUNC8(&dev->rc_map);
out_raw:
	FUNC11(dev);
out_minor:
	FUNC7(&rc_ida, minor);
	return rc;
}