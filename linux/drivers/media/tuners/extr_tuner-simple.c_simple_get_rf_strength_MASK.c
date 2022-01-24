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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/ * adap; } ;
struct tuner_simple_priv {int /*<<< orphan*/  radio_mode; TYPE_1__ i2c_props; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, u16 *strength)
{
	struct tuner_simple_priv *priv = fe->tuner_priv;
	int signal;

	if (priv->i2c_props.adap == NULL || !priv->radio_mode)
		return -EINVAL;

	signal = FUNC2(FUNC1(fe));

	*strength = signal;

	FUNC0("Signal strength: %d\n", signal);

	return 0;
}