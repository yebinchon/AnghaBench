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
 size_t R_EP1 ; 
 int FUNC0 (struct dvb_frontend*) ; 
 int FUNC1 (struct dvb_frontend*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe)
{
	struct tda18271_priv *priv = fe->tuner_priv;
	unsigned char *regs = priv->tda18271_regs;
	int ret;

	ret = FUNC1(fe);
	if (FUNC2(ret))
		goto fail;

	/* test IR_CAL_OK to see if we need init */
	if ((regs[R_EP1] & 0x08) == 0)
		ret = FUNC0(fe);
fail:
	return ret;
}