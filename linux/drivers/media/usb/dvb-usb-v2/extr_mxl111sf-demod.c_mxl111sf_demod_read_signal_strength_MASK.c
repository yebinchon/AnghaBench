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
typedef  int u16 ;
struct mxl111sf_demod_state {int dummy; } ;
struct dvb_frontend {struct mxl111sf_demod_state* demodulator_priv; } ;
typedef  enum fe_modulation { ____Placeholder_fe_modulation } fe_modulation ;

/* Variables and functions */
 int EINVAL ; 
#define  QAM_16 130 
#define  QAM_64 129 
#define  QPSK 128 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct mxl111sf_demod_state*,int*) ; 
 int FUNC2 (struct mxl111sf_demod_state*,int*) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe,
					       u16 *signal_strength)
{
	struct mxl111sf_demod_state *state = fe->demodulator_priv;
	enum fe_modulation modulation;
	int ret;
	u16 snr;

	ret = FUNC1(state, &snr);
	if (ret < 0)
		return ret;
	ret = FUNC2(state, &modulation);
	if (ret < 0)
		return ret;

	switch (modulation) {
	case QPSK:
		*signal_strength = (snr >= 1300) ?
			FUNC0(65535, snr * 44) : snr * 38;
		break;
	case QAM_16:
		*signal_strength = (snr >= 1500) ?
			FUNC0(65535, snr * 38) : snr * 33;
		break;
	case QAM_64:
		*signal_strength = (snr >= 2000) ?
			FUNC0(65535, snr * 29) : snr * 25;
		break;
	default:
		*signal_strength = 0;
		return -EINVAL;
	}

	return 0;
}