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
struct dvb_usb_device {int /*<<< orphan*/  data_mutex; struct cinergyt2_state* priv; } ;
struct dvb_usb_adapter {struct dvb_usb_device* dev; TYPE_1__* fe_adap; } ;
struct cinergyt2_state {int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  CINERGYT2_EP1_GET_FIRMWARE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*) ; 
 struct dvb_usb_device* cinergyt2_usb_device ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct dvb_usb_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_adapter *adap)
{
	struct dvb_usb_device *d = adap->dev;
	struct cinergyt2_state *st = d->priv;
	int ret;

	adap->fe_adap[0].fe = FUNC0(adap->dev);

	FUNC3(&d->data_mutex);
	st->data[0] = CINERGYT2_EP1_GET_FIRMWARE_VERSION;

	ret = FUNC2(d, st->data, 1, st->data, 3, 0);
	if (ret < 0) {
		FUNC1("cinergyt2_power_ctrl() Failed to retrieve sleep state info\n");
	}
	FUNC4(&d->data_mutex);

	/* Copy this pointer as we are gonna need it in the release phase */
	cinergyt2_usb_device = adap->dev;

	return ret;
}