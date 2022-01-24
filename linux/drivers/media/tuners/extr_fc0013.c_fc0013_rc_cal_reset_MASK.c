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
struct fc0013_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct fc0013_priv* tuner_priv; } ;

/* Variables and functions */
 int FUNC0 (struct fc0013_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,int) ; 

int FUNC3(struct dvb_frontend *fe)
{
	struct fc0013_priv *priv = fe->tuner_priv;
	int ret;

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 1); /* open I2C-gate */

	ret = FUNC0(priv, 0x0d, 0x01);
	if (!ret)
		ret = FUNC0(priv, 0x10, 0x00);

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 0); /* close I2C-gate */

	return ret;
}