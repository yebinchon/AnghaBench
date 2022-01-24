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
struct tda18271_priv {unsigned char* tda18271_regs; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;

/* Variables and functions */
 size_t R_EP4 ; 
 size_t R_TM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,size_t,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe)
{
	struct tda18271_priv *priv = fe->tuner_priv;
	unsigned char *regs = priv->tda18271_regs;
	int tm;

	/* switch thermometer on */
	regs[R_TM]   |= 0x10;
	FUNC3(fe, R_TM, 1);

	/* read thermometer info */
	FUNC2(fe);

	if ((((regs[R_TM] & 0x0f) == 0x00) && ((regs[R_TM] & 0x20) == 0x20)) ||
	    (((regs[R_TM] & 0x0f) == 0x08) && ((regs[R_TM] & 0x20) == 0x00))) {

		if ((regs[R_TM] & 0x20) == 0x20)
			regs[R_TM] &= ~0x20;
		else
			regs[R_TM] |= 0x20;

		FUNC3(fe, R_TM, 1);

		FUNC0(10); /* temperature sensing */

		/* read thermometer info */
		FUNC2(fe);
	}

	tm = FUNC1(fe);

	/* switch thermometer off */
	regs[R_TM]   &= ~0x10;
	FUNC3(fe, R_TM, 1);

	/* set CAL mode to normal */
	regs[R_EP4]  &= ~0x03;
	FUNC3(fe, R_EP4, 1);

	return tm;
}