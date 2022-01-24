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
 int DBG_ADV ; 
 size_t R_EP3 ; 
 int tda18271_debug ; 
 int FUNC0 (struct dvb_frontend*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 

int FUNC2(struct dvb_frontend *fe,
			      int sm, int sm_lt, int sm_xt)
{
	struct tda18271_priv *priv = fe->tuner_priv;
	unsigned char *regs = priv->tda18271_regs;

	if (tda18271_debug & DBG_ADV)
		FUNC1("sm = %d, sm_lt = %d, sm_xt = %d\n", sm, sm_lt, sm_xt);

	regs[R_EP3]  &= ~0xe0; /* clear sm, sm_lt, sm_xt */
	regs[R_EP3]  |= (sm    ? (1 << 7) : 0) |
			(sm_lt ? (1 << 6) : 0) |
			(sm_xt ? (1 << 5) : 0);

	return FUNC0(fe, R_EP3, 1);
}