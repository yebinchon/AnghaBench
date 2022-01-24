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
typedef  int /*<<< orphan*/  u32 ;
struct device {int /*<<< orphan*/  of_node; } ;
struct serdev_device {struct device dev; } ;
struct rave_sp {char const* part_number_firmware; char const* part_number_bootloader; int /*<<< orphan*/  event_notifier_list; int /*<<< orphan*/  reply_lock; int /*<<< orphan*/  bus_lock; int /*<<< orphan*/  variant; struct serdev_device* serdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SERDEV_PARITY_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct rave_sp*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct rave_sp* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*) ; 
 int FUNC7 (struct device*,struct serdev_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct rave_sp*) ; 
 int /*<<< orphan*/  rave_sp_serdev_device_ops ; 
 int /*<<< orphan*/  FUNC12 (struct serdev_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct serdev_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct serdev_device*,int) ; 
 int FUNC15 (struct serdev_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct serdev_device *serdev)
{
	struct device *dev = &serdev->dev;
	const char *unknown = "unknown\n";
	struct rave_sp *sp;
	u32 baud;
	int ret;

	if (FUNC10(dev->of_node, "current-speed", &baud)) {
		FUNC1(dev,
			"'current-speed' is not specified in device node\n");
		return -EINVAL;
	}

	sp = FUNC5(dev, sizeof(*sp), GFP_KERNEL);
	if (!sp)
		return -ENOMEM;

	sp->serdev = serdev;
	FUNC3(dev, sp);

	sp->variant = FUNC9(dev);
	if (!sp->variant)
		return -ENODEV;

	FUNC8(&sp->bus_lock);
	FUNC8(&sp->reply_lock);
	FUNC0(&sp->event_notifier_list);

	FUNC13(serdev, &rave_sp_serdev_device_ops);
	ret = FUNC7(dev, serdev);
	if (ret)
		return ret;

	FUNC12(serdev, baud);
	FUNC14(serdev, false);

	ret = FUNC15(serdev, SERDEV_PARITY_NONE);
	if (ret) {
		FUNC1(dev, "Failed to set parity\n");
		return ret;
	}

	ret = FUNC11(sp);
	if (ret) {
		FUNC4(dev, "Failed to get firmware status: %d\n", ret);
		sp->part_number_firmware   = unknown;
		sp->part_number_bootloader = unknown;
	}

	/*
	 * Those strings already have a \n embedded, so there's no
	 * need to have one in format string.
	 */
	FUNC2(dev, "Firmware version: %s",   sp->part_number_firmware);
	FUNC2(dev, "Bootloader version: %s", sp->part_number_bootloader);

	return FUNC6(dev);
}