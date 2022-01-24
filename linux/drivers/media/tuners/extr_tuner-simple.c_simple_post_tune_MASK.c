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
typedef  int u8 ;
typedef  int u16 ;
struct tuner_simple_priv {int type; int /*<<< orphan*/  i2c_props; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;

/* Variables and functions */
 int TUNER_CHARGE_PUMP ; 
#define  TUNER_LG_TDVS_H06XF 130 
#define  TUNER_MICROTUNE_4042FI5 129 
#define  TUNER_PHILIPS_FQ1216LME_MK3 128 
 int TUNER_PLL_LOCKED ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct dvb_frontend *fe, u8 *buffer,
			    u16 div, u8 config, u8 cb)
{
	struct tuner_simple_priv *priv = fe->tuner_priv;
	int rc;

	switch (priv->type) {
	case TUNER_LG_TDVS_H06XF:
		FUNC1(fe, config, 0x20);
		break;
	case TUNER_PHILIPS_FQ1216LME_MK3:
		FUNC1(fe, config, 0x60); /* External AGC */
		break;
	case TUNER_MICROTUNE_4042FI5:
	{
		/* FIXME - this may also work for other tuners */
		unsigned long timeout = jiffies + FUNC0(1);
		u8 status_byte = 0;

		/* Wait until the PLL locks */
		for (;;) {
			if (FUNC2(jiffies, timeout))
				return 0;
			rc = FUNC4(&priv->i2c_props,
						 &status_byte, 1);
			if (1 != rc) {
				FUNC6("i2c i/o read error: rc == %d (should be 1)\n",
					   rc);
				break;
			}
			if (status_byte & TUNER_PLL_LOCKED)
				break;
			FUNC7(10);
		}

		/* Set the charge pump for optimized phase noise figure */
		config &= ~TUNER_CHARGE_PUMP;
		buffer[0] = (div>>8) & 0x7f;
		buffer[1] = div      & 0xff;
		buffer[2] = config;
		buffer[3] = cb;
		FUNC3("tv 0x%02x 0x%02x 0x%02x 0x%02x\n",
			  buffer[0], buffer[1], buffer[2], buffer[3]);

		rc = FUNC5(&priv->i2c_props, buffer, 4);
		if (4 != rc)
			FUNC6("i2c i/o error: rc == %d (should be 4)\n",
				   rc);
		break;
	}
	}

	return 0;
}