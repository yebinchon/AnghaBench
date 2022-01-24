#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  devt; int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; int /*<<< orphan*/  class; } ;
struct rc_dev {int driver_type; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  dev; scalar_t__ tx_ir; TYPE_1__ lirc_dev; int /*<<< orphan*/  lirc_cdev; int /*<<< orphan*/  lirc_fh_lock; int /*<<< orphan*/  lirc_fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RC_DEV_MAX ; 
#define  RC_DRIVER_IR_RAW 129 
#define  RC_DRIVER_SCANCODE 128 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  lirc_base_dev ; 
 int /*<<< orphan*/  lirc_class ; 
 int /*<<< orphan*/  lirc_fops ; 
 int /*<<< orphan*/  lirc_ida ; 
 int /*<<< orphan*/  lirc_release_device ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct rc_dev *dev)
{
	const char *rx_type, *tx_type;
	int err, minor;

	minor = FUNC9(&lirc_ida, 0, RC_DEV_MAX, GFP_KERNEL);
	if (minor < 0)
		return minor;

	FUNC7(&dev->lirc_dev);
	dev->lirc_dev.class = lirc_class;
	dev->lirc_dev.parent = &dev->dev;
	dev->lirc_dev.release = lirc_release_device;
	dev->lirc_dev.devt = FUNC2(FUNC1(lirc_base_dev), minor);
	FUNC6(&dev->lirc_dev, "lirc%d", minor);

	FUNC0(&dev->lirc_fh);
	FUNC11(&dev->lirc_fh_lock);

	FUNC4(&dev->lirc_cdev, &lirc_fops);

	err = FUNC3(&dev->lirc_cdev, &dev->lirc_dev);
	if (err)
		goto out_ida;

	FUNC8(&dev->dev);

	switch (dev->driver_type) {
	case RC_DRIVER_SCANCODE:
		rx_type = "scancode";
		break;
	case RC_DRIVER_IR_RAW:
		rx_type = "raw IR";
		break;
	default:
		rx_type = "no";
		break;
	}

	if (dev->tx_ir)
		tx_type = "raw IR";
	else
		tx_type = "no";

	FUNC5(&dev->dev, "lirc_dev: driver %s registered at minor = %d, %s receiver, %s transmitter",
		 dev->driver_name, minor, rx_type, tx_type);

	return 0;

out_ida:
	FUNC10(&lirc_ida, minor);
	return err;
}