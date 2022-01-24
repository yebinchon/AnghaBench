#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usbnet {TYPE_2__* status; int /*<<< orphan*/  data; } ;
struct usb_driver {int dummy; } ;
struct qmi_wwan_state {struct usb_driver* subdriver; TYPE_3__* control; int /*<<< orphan*/  pmcount; TYPE_3__* data; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; TYPE_1__* cur_altsetting; } ;
struct TYPE_6__ {int /*<<< orphan*/  desc; } ;
struct TYPE_5__ {TYPE_2__* endpoint; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct usb_driver*) ; 
 int FUNC1 (struct usb_driver*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  qmi_wwan_cdc_wdm_manage_power ; 
 struct usb_driver* FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct usbnet*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(struct usbnet *dev)
{
	int rv;
	struct usb_driver *subdriver = NULL;
	struct qmi_wwan_state *info = (void *)&dev->data;

	/* collect bulk endpoints */
	rv = FUNC5(dev, info->data);
	if (rv < 0)
		goto err;

	/* update status endpoint if separate control interface */
	if (info->control != info->data)
		dev->status = &info->control->cur_altsetting->endpoint[0];

	/* require interrupt endpoint for subdriver */
	if (!dev->status) {
		rv = -EINVAL;
		goto err;
	}

	/* for subdriver power management */
	FUNC2(&info->pmcount, 0);

	/* register subdriver */
	subdriver = FUNC4(info->control, &dev->status->desc,
					 4096, &qmi_wwan_cdc_wdm_manage_power);
	if (FUNC0(subdriver)) {
		FUNC3(&info->control->dev, "subdriver registration failed\n");
		rv = FUNC1(subdriver);
		goto err;
	}

	/* prevent usbnet from using status endpoint */
	dev->status = NULL;

	/* save subdriver struct for suspend/resume wrappers */
	info->subdriver = subdriver;

err:
	return rv;
}