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
struct tunertype {int count; struct tuner_params* params; } ;
struct tuner_simple_priv {int type; struct tunertype* tun; } ;
struct tuner_params {int type; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;
typedef  enum param_type { ____Placeholder_param_type } param_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static struct tuner_params *FUNC2(struct dvb_frontend *fe,
						enum param_type desired_type)
{
	struct tuner_simple_priv *priv = fe->tuner_priv;
	struct tunertype *tun = priv->tun;
	int i;

	for (i = 0; i < tun->count; i++)
		if (desired_type == tun->params[i].type)
			break;

	/* use default tuner params if desired_type not available */
	if (i == tun->count) {
		FUNC0("desired params (%s) undefined for tuner %d\n",
			  FUNC1(desired_type), priv->type);
		i = 0;
	}

	FUNC0("using tuner params #%d (%s)\n", i,
		  FUNC1(tun->params[i].type));

	return &tun->params[i];
}