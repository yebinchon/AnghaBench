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
struct tda8290_priv {int /*<<< orphan*/  i2c_props; } ;
struct dvb_frontend {struct tda8290_priv* analog_demod_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static void FUNC6(struct dvb_frontend *fe)
{
	struct tda8290_priv *priv = fe->analog_demod_priv;

	static unsigned char set_adc_ctl[]       = { 0x33, 0x14 };
	static unsigned char set_adc_ctl2[]      = { 0x34, 0x00 };
	static unsigned char set_pll_reg6[]      = { 0x3e, 0x63 };
	static unsigned char set_pll_reg0[]      = { 0x38, 0x23 };
	static unsigned char set_pll_reg7[]      = { 0x3f, 0x01 };
	static unsigned char set_pll_reg10[]     = { 0x42, 0x61 };
	static unsigned char set_gpio_reg0[]     = { 0x44, 0x0b };

	FUNC2(fe, 1);

	FUNC3(fe, 0);
	FUNC4(fe);

	FUNC5(&priv->i2c_props, set_adc_ctl, 2);
	FUNC5(&priv->i2c_props, set_adc_ctl2, 2);
	FUNC5(&priv->i2c_props, set_pll_reg6, 2);
	FUNC5(&priv->i2c_props, set_pll_reg0, 2);
	FUNC5(&priv->i2c_props, set_pll_reg7, 2);
	FUNC5(&priv->i2c_props, set_pll_reg10, 2);
	FUNC5(&priv->i2c_props, set_gpio_reg0, 2);

	FUNC0(fe, 0);
	FUNC1(fe, 0);
}