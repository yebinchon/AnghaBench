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
struct dw2102_state {int* data; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  data_mutex; struct dw2102_state* priv; } ;
struct dvb_usb_adapter {TYPE_1__* fe_adap; struct dvb_usb_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fe; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  cxd2820r_attach ; 
 int /*<<< orphan*/  cxd2820r_config ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,...) ; 
 scalar_t__ FUNC1 (struct dvb_usb_device*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tda18271_attach ; 
 int /*<<< orphan*/  tda18271_config ; 

__attribute__((used)) static int FUNC7(struct dvb_usb_adapter *adap)
{
	struct dvb_usb_device *d = adap->dev;
	struct dw2102_state *state = d->priv;

	FUNC5(&d->data_mutex);

	state->data[0] = 0xe;
	state->data[1] = 0x87;
	state->data[2] = 0x0;

	if (FUNC1(d, state->data, 3, state->data, 1, 0) < 0)
		FUNC2("command 0x0e transfer failed.");

	state->data[0] = 0xe;
	state->data[1] = 0x86;
	state->data[2] = 1;

	if (FUNC1(d, state->data, 3, state->data, 1, 0) < 0)
		FUNC2("command 0x0e transfer failed.");

	state->data[0] = 0xe;
	state->data[1] = 0x80;
	state->data[2] = 0;

	if (FUNC1(d, state->data, 3, state->data, 1, 0) < 0)
		FUNC2("command 0x0e transfer failed.");

	FUNC4(50);

	state->data[0] = 0xe;
	state->data[1] = 0x80;
	state->data[2] = 1;

	if (FUNC1(d, state->data, 3, state->data, 1, 0) < 0)
		FUNC2("command 0x0e transfer failed.");

	state->data[0] = 0x51;

	if (FUNC1(d, state->data, 1, state->data, 1, 0) < 0)
		FUNC2("command 0x51 transfer failed.");

	FUNC6(&d->data_mutex);

	adap->fe_adap[0].fe = FUNC0(cxd2820r_attach, &cxd2820r_config,
					d->i2c_adap, NULL);
	if (adap->fe_adap[0].fe != NULL) {
		if (FUNC0(tda18271_attach, adap->fe_adap[0].fe, 0x60,
					&d->i2c_adap, &tda18271_config)) {
			FUNC3("Attached TDA18271HD/CXD2820R!");
			return 0;
		}
	}

	FUNC3("Failed to attach TDA18271HD/CXD2820R!");
	return -EIO;
}