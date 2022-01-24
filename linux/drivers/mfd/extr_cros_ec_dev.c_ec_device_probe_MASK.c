#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct cros_ec_platform {int /*<<< orphan*/  ec_name; int /*<<< orphan*/  cmd_offset; } ;
struct TYPE_14__ {int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/ * class; } ;
struct cros_ec_dev {unsigned int* features; TYPE_2__ class_dev; struct device* dev; TYPE_7__* ec_dev; int /*<<< orphan*/  cmd_offset; } ;
struct TYPE_16__ {TYPE_1__* dev; } ;
struct TYPE_15__ {int num_cells; int /*<<< orphan*/  name; struct TYPE_15__* mfd_cells; int /*<<< orphan*/  id; int /*<<< orphan*/  desc; } ;
struct TYPE_13__ {struct device_node* of_node; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  EC_FEATURE_MOTION_SENSE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cros_class ; 
 int /*<<< orphan*/  FUNC1 (struct cros_ec_dev*) ; 
 scalar_t__ FUNC2 (struct cros_ec_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cros_ec_class_release ; 
 TYPE_3__* cros_ec_platform_cells ; 
 int /*<<< orphan*/  FUNC3 (struct cros_ec_dev*) ; 
 TYPE_3__* cros_ec_vbc_cells ; 
 TYPE_3__* cros_mcu_devices ; 
 TYPE_3__* cros_subdevices ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,...) ; 
 TYPE_7__* FUNC5 (int /*<<< orphan*/ ) ; 
 struct cros_ec_platform* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct cros_ec_dev*) ; 
 int FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,int) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 struct cros_ec_dev* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct device*,TYPE_3__*,int) ; 
 scalar_t__ FUNC15 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	int retval = -ENOMEM;
	struct device_node *node;
	struct device *dev = &pdev->dev;
	struct cros_ec_platform *ec_platform = FUNC6(dev);
	struct cros_ec_dev *ec = FUNC13(sizeof(*ec), GFP_KERNEL);
	int i;

	if (!ec)
		return retval;

	FUNC8(dev, ec);
	ec->ec_dev = FUNC5(dev->parent);
	ec->dev = dev;
	ec->cmd_offset = ec_platform->cmd_offset;
	ec->features[0] = -1U; /* Not cached yet */
	ec->features[1] = -1U; /* Not cached yet */
	FUNC12(&ec->class_dev);

	for (i = 0; i < FUNC0(cros_mcu_devices); i++) {
		/*
		 * Check whether this is actually a dedicated MCU rather
		 * than an standard EC.
		 */
		if (FUNC2(ec, cros_mcu_devices[i].id)) {
			FUNC7(dev, "CrOS %s MCU detected\n",
				 cros_mcu_devices[i].desc);
			/*
			 * Help userspace differentiating ECs from other MCU,
			 * regardless of the probing order.
			 */
			ec_platform->ec_name = cros_mcu_devices[i].name;
			break;
		}
	}

	/*
	 * Add the class device
	 */
	ec->class_dev.class = &cros_class;
	ec->class_dev.parent = dev;
	ec->class_dev.release = cros_ec_class_release;

	retval = FUNC9(&ec->class_dev, "%s", ec_platform->ec_name);
	if (retval) {
		FUNC4(dev, "dev_set_name failed => %d\n", retval);
		goto failed;
	}

	retval = FUNC11(&ec->class_dev);
	if (retval)
		goto failed;

	/* check whether this EC is a sensor hub. */
	if (FUNC2(ec, EC_FEATURE_MOTION_SENSE))
		FUNC3(ec);
	else
		/* Workaroud for older EC firmware */
		FUNC1(ec);

	/*
	 * The following subdevices can be detected by sending the
	 * EC_FEATURE_GET_CMD Embedded Controller device.
	 */
	for (i = 0; i < FUNC0(cros_subdevices); i++) {
		if (FUNC2(ec, cros_subdevices[i].id)) {
			retval = FUNC14(ec->dev,
						cros_subdevices[i].mfd_cells,
						cros_subdevices[i].num_cells);
			if (retval)
				FUNC4(ec->dev,
					"failed to add %s subdevice: %d\n",
					cros_subdevices[i].mfd_cells->name,
					retval);
		}
	}

	/*
	 * The following subdevices cannot be detected by sending the
	 * EC_FEATURE_GET_CMD to the Embedded Controller device.
	 */
	retval = FUNC14(ec->dev, cros_ec_platform_cells,
					 FUNC0(cros_ec_platform_cells));
	if (retval)
		FUNC10(ec->dev,
			 "failed to add cros-ec platform devices: %d\n",
			 retval);

	/* Check whether this EC instance has a VBC NVRAM */
	node = ec->ec_dev->dev->of_node;
	if (FUNC15(node, "google,has-vbc-nvram")) {
		retval = FUNC14(ec->dev, cros_ec_vbc_cells,
						FUNC0(cros_ec_vbc_cells));
		if (retval)
			FUNC10(ec->dev, "failed to add VBC devices: %d\n",
				 retval);
	}

	return 0;

failed:
	FUNC16(&ec->class_dev);
	return retval;
}