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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,...) ; 
 scalar_t__ FUNC1 (struct dvb_usb_device*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dw2104_ts2020_config ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  m88rs2000_attach ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s421_m88rs2000_config ; 
 int /*<<< orphan*/  ts2020_attach ; 

__attribute__((used)) static int FUNC6(struct dvb_usb_adapter *adap)
{
	struct dvb_usb_device *d = adap->dev;
	struct dw2102_state *state = d->priv;

	FUNC4(&d->data_mutex);

	state->data[0] = 0x51;

	if (FUNC1(d, state->data, 1, state->data, 1, 0) < 0)
		FUNC2("command 0x51 transfer failed.");

	FUNC5(&d->data_mutex);

	adap->fe_adap[0].fe = FUNC0(m88rs2000_attach,
					&s421_m88rs2000_config,
					&d->i2c_adap);

	if (adap->fe_adap[0].fe == NULL)
		return -EIO;

	if (FUNC0(ts2020_attach, adap->fe_adap[0].fe,
				&dw2104_ts2020_config,
				&d->i2c_adap)) {
		FUNC3("Attached RS2000/TS2020!");
		return 0;
	}

	FUNC3("Failed to attach RS2000/TS2020!");
	return -EIO;
}