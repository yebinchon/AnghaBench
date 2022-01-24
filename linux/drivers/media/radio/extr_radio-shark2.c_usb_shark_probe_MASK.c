#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  release; } ;
struct TYPE_7__ {int has_am; int write_before_read; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/ * ops; struct shark_device* private_data; TYPE_1__* v4l2_dev; } ;
struct shark_device {struct shark_device* transfer_buffer; TYPE_1__ v4l2_dev; TYPE_5__ tea; int /*<<< orphan*/  usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TB_LEN ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct shark_device*) ; 
 struct shark_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct shark_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shark_instance ; 
 int FUNC5 (struct shark_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shark_tea_ops ; 
 int /*<<< orphan*/  FUNC6 (struct shark_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  usb_shark_release ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC13(struct usb_interface *intf,
			   const struct usb_device_id *id)
{
	struct shark_device *shark;
	int retval = -ENOMEM;

	shark = FUNC3(sizeof(struct shark_device), GFP_KERNEL);
	if (!shark)
		return retval;

	shark->transfer_buffer = FUNC2(TB_LEN, GFP_KERNEL);
	if (!shark->transfer_buffer)
		goto err_alloc_buffer;

	FUNC10(&shark->v4l2_dev, DRV_NAME, &shark_instance);

	retval = FUNC5(shark, &intf->dev);
	if (retval)
		goto err_reg_leds;

	shark->v4l2_dev.release = usb_shark_release;
	retval = FUNC9(&intf->dev, &shark->v4l2_dev);
	if (retval) {
		FUNC12(&shark->v4l2_dev, "couldn't register v4l2_device\n");
		goto err_reg_dev;
	}

	shark->usbdev = FUNC0(intf);
	shark->tea.v4l2_dev = &shark->v4l2_dev;
	shark->tea.private_data = shark;
	shark->tea.ops = &shark_tea_ops;
	shark->tea.has_am = true;
	shark->tea.write_before_read = true;
	FUNC7(shark->tea.card, "Griffin radioSHARK2",
		sizeof(shark->tea.card));
	FUNC8(shark->usbdev, shark->tea.bus_info,
		sizeof(shark->tea.bus_info));

	retval = FUNC4(&shark->tea, THIS_MODULE);
	if (retval) {
		FUNC12(&shark->v4l2_dev, "couldn't init tea5777\n");
		goto err_init_tea;
	}

	return 0;

err_init_tea:
	FUNC11(&shark->v4l2_dev);
err_reg_dev:
	FUNC6(shark);
err_reg_leds:
	FUNC1(shark->transfer_buffer);
err_alloc_buffer:
	FUNC1(shark);

	return retval;
}