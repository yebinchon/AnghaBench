#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ frontend; } ;
struct vb2_dvb_frontend {TYPE_1__ dvb; } ;
struct TYPE_7__ {TYPE_2__* driver; } ;
struct i2c_client {TYPE_3__ dev; } ;
struct cx23885_tsport {int /*<<< orphan*/ * gate_ctrl; int /*<<< orphan*/  nr; TYPE_4__* dev; struct i2c_client* i2c_client_demod; struct i2c_client* i2c_client_tuner; struct i2c_client* i2c_client_sec; struct i2c_client* i2c_client_ci; int /*<<< orphan*/  frontends; } ;
struct TYPE_8__ {int board; } ;
struct TYPE_6__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
#define  CX23885_BOARD_NETUP_DUAL_DVBS2_CI 129 
#define  CX23885_BOARD_NETUP_DUAL_DVB_T_C_CI_RF 128 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx23885_tsport*) ; 
 struct vb2_dvb_frontend* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct cx23885_tsport *port)
{
	struct vb2_dvb_frontend *fe0;
	struct i2c_client *client;

	fe0 = FUNC4(&port->frontends, 1);

	if (fe0 && fe0->dvb.frontend)
		FUNC5(&port->frontends);

	/* remove I2C client for CI */
	client = port->i2c_client_ci;
	if (client) {
		FUNC2(client->dev.driver->owner);
		FUNC1(client);
	}

	/* remove I2C client for SEC */
	client = port->i2c_client_sec;
	if (client) {
		FUNC2(client->dev.driver->owner);
		FUNC1(client);
	}

	/* remove I2C client for tuner */
	client = port->i2c_client_tuner;
	if (client) {
		FUNC2(client->dev.driver->owner);
		FUNC1(client);
	}

	/* remove I2C client for demodulator */
	client = port->i2c_client_demod;
	if (client) {
		FUNC2(client->dev.driver->owner);
		FUNC1(client);
	}

	switch (port->dev->board) {
	case CX23885_BOARD_NETUP_DUAL_DVBS2_CI:
		FUNC3(port);
		break;
	case CX23885_BOARD_NETUP_DUAL_DVB_T_C_CI_RF:
		FUNC0(port->dev, port->nr);
		break;
	}

	port->gate_ctrl = NULL;

	return 0;
}