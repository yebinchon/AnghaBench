#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct dvb_usb_adapter {struct dib0700_adapter_state* priv; } ;
struct TYPE_5__ {int frequency; int bandwidth_hz; } ;
struct dvb_frontend {TYPE_2__ dtv_property_cache; TYPE_1__* dvb; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_tune_state ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* pwm_agc_reset ) (struct dvb_frontend*) ;int /*<<< orphan*/  (* set_gpio ) (struct dvb_frontend*,int,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* set_wbd_ref ) (struct dvb_frontend*,int) ;int /*<<< orphan*/  (* ctrl_timf ) (struct dvb_frontend*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* update_pll ) (struct dvb_frontend*,int /*<<< orphan*/ *,int,int) ;} ;
struct dib0700_adapter_state {int (* set_param_save ) (struct dvb_frontend*) ;TYPE_3__ dib8000_ops; } ;
typedef  enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;
struct TYPE_4__ {struct dvb_usb_adapter* priv; } ;

/* Variables and functions */
 int BAND_CBAND ; 
 int FUNC0 (int) ; 
#define  BAND_UHF 129 
#define  BAND_VHF 128 
 int /*<<< orphan*/  CT_AGC_START ; 
 int CT_AGC_STEP_0 ; 
 int CT_AGC_STEP_1 ; 
 int CT_AGC_STOP ; 
 int /*<<< orphan*/  CT_DEMOD_START ; 
 int CT_SHUTDOWN ; 
 int /*<<< orphan*/  DEMOD_TIMF_SET ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC4 (struct dvb_frontend*) ; 
 int FUNC5 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC7 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  dib8090_pll_config_12mhz ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct dvb_frontend*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC12 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct dvb_frontend*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC15 (struct dvb_frontend*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct dvb_frontend*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct dvb_frontend*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct dvb_frontend*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct dvb_frontend*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC21(struct dvb_frontend *fe)
{
	struct dvb_usb_adapter *adap = fe->dvb->priv;
	struct dib0700_adapter_state *state = adap->priv;
	u8 pll_ratio, band = FUNC0(fe->dtv_property_cache.frequency / 1000);
	u16 target, ltgain, rf_gain_limit;
	u32 timf;
	int ret = 0;
	enum frontend_tune_state tune_state = CT_SHUTDOWN;

	switch (band) {
	default:
			FUNC1("Warning : Rf frequency  (%iHz) is not in the supported range, using VHF switch ", fe->dtv_property_cache.frequency);
			/* fall through */
	case BAND_VHF:
			state->dib8000_ops.set_gpio(fe, 3, 0, 1);
			break;
	case BAND_UHF:
			state->dib8000_ops.set_gpio(fe, 3, 0, 0);
			break;
	}

	ret = state->set_param_save(fe);
	if (ret < 0)
		return ret;

	if (fe->dtv_property_cache.bandwidth_hz != 6000000) {
		FUNC1("only 6MHz bandwidth is supported\n");
		return -EINVAL;
	}

	/* Update PLL if needed ratio */
	state->dib8000_ops.update_pll(fe, &dib8090_pll_config_12mhz, fe->dtv_property_cache.bandwidth_hz / 1000, 0);

	/* Get optimize PLL ratio to remove spurious */
	pll_ratio = FUNC8(fe);
	if (pll_ratio == 17)
		timf = 21387946;
	else if (pll_ratio == 18)
		timf = 20199727;
	else if (pll_ratio == 19)
		timf = 19136583;
	else
		timf = 18179756;

	/* Update ratio */
	state->dib8000_ops.update_pll(fe, &dib8090_pll_config_12mhz, fe->dtv_property_cache.bandwidth_hz / 1000, pll_ratio);

	state->dib8000_ops.ctrl_timf(fe, DEMOD_TIMF_SET, timf);

	if (band != BAND_CBAND) {
		/* dib0090_get_wbd_target is returning any possible temperature compensated wbd-target */
		target = (FUNC5(fe) * 8 * 18 / 33 + 1) / 2;
		state->dib8000_ops.set_wbd_ref(fe, target);
	}

	if (band == BAND_CBAND) {
		FUNC1("tuning in CBAND - soft-AGC startup\n");
		FUNC7(fe, CT_AGC_START);

		do {
			ret = FUNC2(fe);
			FUNC9(ret);
			tune_state = FUNC4(fe);
			if (tune_state == CT_AGC_STEP_0)
				state->dib8000_ops.set_gpio(fe, 6, 0, 1);
			else if (tune_state == CT_AGC_STEP_1) {
				FUNC3(fe, NULL, NULL, &rf_gain_limit, &ltgain);
				if (rf_gain_limit < 2000) /* activate the external attenuator in case of very high input power */
					state->dib8000_ops.set_gpio(fe, 6, 0, 0);
			}
		} while (tune_state < CT_AGC_STOP);

		FUNC1("switching to PWM AGC\n");
		FUNC6(fe);
		state->dib8000_ops.pwm_agc_reset(fe);
		state->dib8000_ops.set_tune_state(fe, CT_DEMOD_START);
	} else {
		/* for everything else than CBAND we are using standard AGC */
		FUNC1("not tuning in CBAND - standard AGC startup\n");
		FUNC6(fe);
	}

	return 0;
}