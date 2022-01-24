#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  adap; } ;
struct TYPE_11__ {int /*<<< orphan*/  switch_addr; int /*<<< orphan*/  std_map; int /*<<< orphan*/  config; } ;
struct tda8290_priv {int tda827x_addr; TYPE_1__ i2c_props; TYPE_5__ cfg; int /*<<< orphan*/  ver; int /*<<< orphan*/  tda18271_std_map; } ;
struct i2c_msg {int* buf; int len; int addr; int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  (* sleep ) (struct dvb_frontend*) ;int /*<<< orphan*/  (* init ) (struct dvb_frontend*) ;} ;
struct TYPE_10__ {TYPE_3__ analog_ops; TYPE_2__ tuner_ops; } ;
struct dvb_frontend {TYPE_4__ ops; struct tda8290_priv* analog_demod_priv; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int /*<<< orphan*/  TDA18271 ; 
 int /*<<< orphan*/  TDA8275 ; 
 int /*<<< orphan*/  TDA8275A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dvb_frontend*,int,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC7 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC8 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  tda18271_attach ; 
 int /*<<< orphan*/  tda827x_attach ; 
 TYPE_5__ tda829x_tda18271_config ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct dvb_frontend *fe)
{
	struct tda8290_priv *priv = fe->analog_demod_priv;
	int i, ret, tuners_found;
	u32 tuner_addrs;
	u8 data;
	struct i2c_msg msg = { .flags = I2C_M_RD, .buf = &data, .len = 1 };

	if (fe->ops.analog_ops.i2c_gate_ctrl)
		fe->ops.analog_ops.i2c_gate_ctrl(fe, 1);

	/* probe for tuner chip */
	tuners_found = 0;
	tuner_addrs = 0;
	for (i = 0x60; i <= 0x63; i++) {
		msg.addr = i;
		ret = FUNC1(priv->i2c_props.adap, &msg, 1);
		if (ret == 1) {
			tuners_found++;
			tuner_addrs = (tuner_addrs << 8) + i;
		}
	}
	/* if there is more than one tuner, we expect the right one is
	   behind the bridge and we choose the highest address that doesn't
	   give a response now
	 */

	if (fe->ops.analog_ops.i2c_gate_ctrl)
		fe->ops.analog_ops.i2c_gate_ctrl(fe, 0);

	if (tuners_found > 1)
		for (i = 0; i < tuners_found; i++) {
			msg.addr = tuner_addrs  & 0xff;
			ret = FUNC1(priv->i2c_props.adap, &msg, 1);
			if (ret == 1)
				tuner_addrs = tuner_addrs >> 8;
			else
				break;
		}

	if (tuner_addrs == 0) {
		tuner_addrs = 0x60;
		FUNC9("could not clearly identify tuner address, defaulting to %x\n",
			   tuner_addrs);
	} else {
		tuner_addrs = tuner_addrs & 0xff;
		FUNC9("setting tuner address to %x\n", tuner_addrs);
	}
	priv->tda827x_addr = tuner_addrs;
	msg.addr = tuner_addrs;

	if (fe->ops.analog_ops.i2c_gate_ctrl)
		fe->ops.analog_ops.i2c_gate_ctrl(fe, 1);
	ret = FUNC1(priv->i2c_props.adap, &msg, 1);

	if (ret != 1) {
		FUNC10("tuner access failed!\n");
		if (fe->ops.analog_ops.i2c_gate_ctrl)
			fe->ops.analog_ops.i2c_gate_ctrl(fe, 0);
		return -EREMOTEIO;
	}

	if ((data == 0x83) || (data == 0x84)) {
		priv->ver |= TDA18271;
		tda829x_tda18271_config.config = priv->cfg.config;
		tda829x_tda18271_config.std_map = priv->tda18271_std_map;
		FUNC0(tda18271_attach, fe, priv->tda827x_addr,
			   priv->i2c_props.adap, &tda829x_tda18271_config);
	} else {
		if ((data & 0x3c) == 0)
			priv->ver |= TDA8275;
		else
			priv->ver |= TDA8275A;

		FUNC0(tda827x_attach, fe, priv->tda827x_addr,
			   priv->i2c_props.adap, &priv->cfg);
		priv->cfg.switch_addr = priv->i2c_props.addr;
	}
	if (fe->ops.tuner_ops.init)
		fe->ops.tuner_ops.init(fe);

	if (fe->ops.tuner_ops.sleep)
		fe->ops.tuner_ops.sleep(fe);

	if (fe->ops.analog_ops.i2c_gate_ctrl)
		fe->ops.analog_ops.i2c_gate_ctrl(fe, 0);

	return 0;
}