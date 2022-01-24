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
typedef  int u32 ;
struct tunertype {int stepsize; int /*<<< orphan*/  name; } ;
struct tuner_simple_priv {struct tunertype* tun; int /*<<< orphan*/  type; } ;
struct tuner_params {int iffreq; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  TUNER_PARAM_TYPE_DIGITAL ; 
 int offset ; 
 int FUNC0 (struct dvb_frontend*,struct tuner_params*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int*,int const,int const,int const) ; 
 struct tuner_params* FUNC2 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC5(struct dvb_frontend *fe, u8 *buf,
				const u32 delsys,
				const u32 freq,
				const u32 bw)
{
	/* This function returns the tuned frequency on success, 0 on error */
	struct tuner_simple_priv *priv = fe->tuner_priv;
	struct tunertype *tun = priv->tun;
	struct tuner_params *t_params;
	u8 config, cb;
	u32 div;
	int ret;
	u32 frequency = freq / 62500;

	if (!tun->stepsize) {
		/* tuner-core was loaded before the digital tuner was
		 * configured and somehow picked the wrong tuner type */
		FUNC4("attempt to treat tuner %d (%s) as digital tuner without stepsize defined.\n",
			  priv->type, priv->tun->name);
		return 0; /* failure */
	}

	t_params = FUNC2(fe, TUNER_PARAM_TYPE_DIGITAL);
	ret = FUNC0(fe, t_params, &frequency, &config, &cb);
	if (ret < 0)
		return 0; /* failure */

	div = ((frequency + t_params->iffreq) * 62500 + offset +
	       tun->stepsize/2) / tun->stepsize;

	buf[0] = div >> 8;
	buf[1] = div & 0xff;
	buf[2] = config;
	buf[3] = cb;

	FUNC1(fe, buf, delsys, freq, bw);

	FUNC3("%s: div=%d | buf=0x%02x,0x%02x,0x%02x,0x%02x\n",
		  tun->name, div, buf[0], buf[1], buf[2], buf[3]);

	/* calculate the frequency we set it to */
	return (div * tun->stepsize) - t_params->iffreq;
}