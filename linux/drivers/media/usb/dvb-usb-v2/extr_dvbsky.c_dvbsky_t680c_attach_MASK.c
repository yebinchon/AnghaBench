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
struct sp2_config {int if_port; int /*<<< orphan*/  ci_control; struct dvb_usb_device* priv; int /*<<< orphan*/ * dvb_adap; int /*<<< orphan*/ * fe; int /*<<< orphan*/  ts_mode; struct i2c_adapter** i2c_adapter; } ;
struct si2168_config {int if_port; int /*<<< orphan*/  ci_control; struct dvb_usb_device* priv; int /*<<< orphan*/ * dvb_adap; int /*<<< orphan*/ * fe; int /*<<< orphan*/  ts_mode; struct i2c_adapter** i2c_adapter; } ;
struct si2157_config {int if_port; int /*<<< orphan*/  ci_control; struct dvb_usb_device* priv; int /*<<< orphan*/ * dvb_adap; int /*<<< orphan*/ * fe; int /*<<< orphan*/  ts_mode; struct i2c_adapter** i2c_adapter; } ;
struct i2c_adapter {int dummy; } ;
struct dvbsky_state {void* i2c_client_demod; void* i2c_client_tuner; void* i2c_client_ci; } ;
struct dvb_usb_device {struct i2c_adapter i2c_adap; } ;
struct dvb_usb_adapter {int /*<<< orphan*/  dvb_adap; int /*<<< orphan*/ ** fe; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SI2168_TS_PARALLEL ; 
 struct dvb_usb_device* FUNC0 (struct dvb_usb_adapter*) ; 
 struct dvbsky_state* FUNC1 (struct dvb_usb_adapter*) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *,struct i2c_adapter*,int,struct sp2_config*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  dvbsky_ci_ctrl ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_adapter *adap)
{
	struct dvbsky_state *state = FUNC1(adap);
	struct dvb_usb_device *d = FUNC0(adap);
	struct i2c_adapter *i2c_adapter;
	struct si2168_config si2168_config = {};
	struct si2157_config si2157_config = {};
	struct sp2_config sp2_config = {};

	/* attach demod */
	si2168_config.i2c_adapter = &i2c_adapter;
	si2168_config.fe = adap->fe[0];
	si2168_config.ts_mode = SI2168_TS_PARALLEL;

	state->i2c_client_demod = FUNC2("si2168", NULL,
						   &d->i2c_adap,
						   0x64, &si2168_config);
	if (!state->i2c_client_demod)
		return -ENODEV;

	/* attach tuner */
	si2157_config.fe = adap->fe[0];
	si2157_config.if_port = 1;

	state->i2c_client_tuner = FUNC2("si2157", NULL,
						   i2c_adapter,
						   0x60, &si2157_config);
	if (!state->i2c_client_tuner) {
		FUNC3(state->i2c_client_demod);
		return -ENODEV;
	}

	/* attach ci controller */
	sp2_config.dvb_adap = &adap->dvb_adap;
	sp2_config.priv = d;
	sp2_config.ci_control = dvbsky_ci_ctrl;

	state->i2c_client_ci = FUNC2("sp2", NULL,
						&d->i2c_adap,
						0x40, &sp2_config);

	if (!state->i2c_client_ci) {
		FUNC3(state->i2c_client_tuner);
		FUNC3(state->i2c_client_demod);
		return -ENODEV;
	}

	return 0;
}