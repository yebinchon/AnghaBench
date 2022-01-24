#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {char* name; int* evbit; TYPE_1__ dev; int /*<<< orphan*/  id; scalar_t__ keycodemax; scalar_t__ keycodesize; int /*<<< orphan*/  keybit; int /*<<< orphan*/  phys; } ;
struct em28xx {struct input_dev* sbutton_input_dev; TYPE_2__* intf; int /*<<< orphan*/  snapshot_button_path; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EM28XX_SNAPSHOT_KEY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct input_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (struct input_dev*) ; 
 struct usb_device* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct em28xx *dev)
{
	struct usb_device *udev = FUNC6(dev->intf);
	struct input_dev *input_dev;
	int err;

	FUNC2(&dev->intf->dev, "Registering snapshot button...\n");
	input_dev = FUNC3();
	if (!input_dev)
		return -ENOMEM;

	FUNC9(udev, dev->snapshot_button_path,
		      sizeof(dev->snapshot_button_path));
	FUNC8(dev->snapshot_button_path, "/sbutton",
		sizeof(dev->snapshot_button_path));

	input_dev->name = "em28xx snapshot button";
	input_dev->phys = dev->snapshot_button_path;
	input_dev->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_REP);
	FUNC7(EM28XX_SNAPSHOT_KEY, input_dev->keybit);
	input_dev->keycodesize = 0;
	input_dev->keycodemax = 0;
	FUNC10(udev, &input_dev->id);
	input_dev->dev.parent = &dev->intf->dev;

	err = FUNC5(input_dev);
	if (err) {
		FUNC1(&dev->intf->dev, "input_register_device failed\n");
		FUNC4(input_dev);
		return err;
	}

	dev->sbutton_input_dev = input_dev;
	return 0;
}