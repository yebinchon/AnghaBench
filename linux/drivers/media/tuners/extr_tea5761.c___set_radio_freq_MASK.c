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
struct tea5761_priv {unsigned int frequency; int /*<<< orphan*/  i2c_props; scalar_t__ standby; } ;
struct dvb_frontend {struct tea5761_priv* tuner_priv; } ;

/* Variables and functions */
 unsigned char TEA5761_TNCTRL_MST ; 
 unsigned char TEA5761_TNCTRL_MU ; 
 unsigned char TEA5761_TNCTRL_PUPD_0 ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,
			    unsigned int freq,
			    bool mono)
{
	struct tea5761_priv *priv = fe->tuner_priv;
	unsigned int frq = freq;
	unsigned char buffer[7] = {0, 0, 0, 0, 0, 0, 0 };
	unsigned div;
	int rc;

	FUNC1("radio freq counter %d\n", frq);

	if (priv->standby) {
		FUNC1("TEA5761 set to standby mode\n");
		buffer[5] |= TEA5761_TNCTRL_MU;
	} else {
		buffer[4] |= TEA5761_TNCTRL_PUPD_0;
	}


	if (mono) {
		FUNC1("TEA5761 set to mono\n");
		buffer[5] |= TEA5761_TNCTRL_MST;
	} else {
		FUNC1("TEA5761 set to stereo\n");
	}

	div = (1000 * (frq * 4 / 16 + 700 + 225) ) >> 15;
	buffer[1] = (div >> 8) & 0x3f;
	buffer[2] = div & 0xff;

	if (debug)
		FUNC0(buffer);

	if (7 != (rc = FUNC2(&priv->i2c_props, buffer, 7)))
		FUNC3("i2c i/o error: rc == %d (should be 5)\n", rc);

	priv->frequency = frq * 125 / 2;

	return 0;
}