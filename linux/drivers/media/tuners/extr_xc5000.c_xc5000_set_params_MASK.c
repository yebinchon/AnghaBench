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
struct xc5000_priv {int mode; } ;
struct dvb_frontend {struct xc5000_priv* tuner_priv; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_TUNER_ANALOG_TV 130 
#define  V4L2_TUNER_DIGITAL_TV 129 
#define  V4L2_TUNER_RADIO 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct dvb_frontend*) ; 
 int FUNC2 (struct dvb_frontend*) ; 
 int FUNC3 (struct dvb_frontend*) ; 
 scalar_t__ FUNC4 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe)
{
	struct xc5000_priv *priv = fe->tuner_priv;

	if (FUNC4(fe, 0) != 0) {
		FUNC0(1, "Unable to load firmware and init tuner\n");
		return -EINVAL;
	}

	switch (priv->mode) {
	case V4L2_TUNER_RADIO:
		return FUNC1(fe);
	case V4L2_TUNER_ANALOG_TV:
		return FUNC2(fe);
	case V4L2_TUNER_DIGITAL_TV:
		return FUNC3(fe);
	}

	return 0;
}