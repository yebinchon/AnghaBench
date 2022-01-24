#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ size_of_priv; int (* priv_init ) (struct dvb_usb_device*) ;} ;
struct dvb_usb_device {int /*<<< orphan*/ * priv; TYPE_1__ props; int /*<<< orphan*/  state; int /*<<< orphan*/  i2c_mutex; int /*<<< orphan*/  usb_mutex; int /*<<< orphan*/  data_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVB_USB_STATE_INIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct dvb_usb_device*,short*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_device*) ; 
 int FUNC3 (struct dvb_usb_device*) ; 
 int FUNC4 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct dvb_usb_device*) ; 

__attribute__((used)) static int FUNC10(struct dvb_usb_device *d, short *adapter_nums)
{
	int ret = 0;

	FUNC8(&d->data_mutex);
	FUNC8(&d->usb_mutex);
	FUNC8(&d->i2c_mutex);

	d->state = DVB_USB_STATE_INIT;

	if (d->props.size_of_priv > 0) {
		d->priv = FUNC7(d->props.size_of_priv, GFP_KERNEL);
		if (d->priv == NULL) {
			FUNC5("no memory for priv in 'struct dvb_usb_device'");
			return -ENOMEM;
		}

		if (d->props.priv_init != NULL) {
			ret = d->props.priv_init(d);
			if (ret != 0) {
				FUNC6(d->priv);
				d->priv = NULL;
				return ret;
			}
		}
	}

	/* check the capabilities and set appropriate variables */
	FUNC1(d, 1);

	if ((ret = FUNC3(d)) ||
		(ret = FUNC0(d, adapter_nums))) {
		FUNC2(d);
		return ret;
	}

	if ((ret = FUNC4(d)))
		FUNC5("could not initialize remote control.");

	FUNC1(d, 0);

	return 0;
}