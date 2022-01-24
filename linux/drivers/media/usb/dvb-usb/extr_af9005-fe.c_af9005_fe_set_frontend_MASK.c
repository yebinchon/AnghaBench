#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;int /*<<< orphan*/ * release; } ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {int /*<<< orphan*/  bandwidth_hz; int /*<<< orphan*/  frequency; } ;
struct dvb_frontend {TYPE_2__ ops; struct af9005_fe_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct af9005_fe_state {int original_fcw; int strong; int /*<<< orphan*/  next_status_check; scalar_t__ abort_count; scalar_t__ post_vit_error_count; scalar_t__ ber; scalar_t__ pre_vit_bit_count; scalar_t__ pre_vit_error_count; int /*<<< orphan*/  d; scalar_t__ original_if_unplug_th; int /*<<< orphan*/  original_aci1_if_top; int /*<<< orphan*/  original_aci0_if_top; int /*<<< orphan*/  original_if_top; int /*<<< orphan*/  original_rf_top; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  XD_MP2IF_MISC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  jiffies ; 
 int reg_api_retrain_request_pos ; 
 int FUNC11 (struct dvb_frontend*) ; 
 int xd_p_reg_aagc_if_top_numerator_7_0 ; 
 int xd_p_reg_aagc_if_top_numerator_9_8 ; 
 int xd_p_reg_aagc_rf_top_numerator_7_0 ; 
 int xd_p_reg_aagc_rf_top_numerator_9_8 ; 
 int /*<<< orphan*/  xd_p_reg_api_retrain_request ; 
 int xd_p_reg_unplug_th ; 

__attribute__((used)) static int FUNC12(struct dvb_frontend *fe)
{
	struct dtv_frontend_properties *fep = &fe->dtv_property_cache;
	struct af9005_fe_state *state = fe->demodulator_priv;
	int ret;
	u8 temp, temp0, temp1, temp2;

	FUNC9("af9005_fe_set_frontend freq %d bw %d\n", fep->frequency,
		 fep->bandwidth_hz);
	if (fe->ops.tuner_ops.release == NULL) {
		FUNC10("Tuner not attached");
		return -ENODEV;
	}

	FUNC9("turn off led\n");
	/* not in the log */
	ret = FUNC2(state->d, 0);
	if (ret)
		return ret;
	/* not sure about the bits */
	ret = FUNC6(state->d, XD_MP2IF_MISC, 2, 1, 0);
	if (ret)
		return ret;

	/* set FCW to default value */
	FUNC9("set FCW to default value\n");
	temp0 = (u8) (state->original_fcw & 0x000000ff);
	temp1 = (u8) ((state->original_fcw & 0x0000ff00) >> 8);
	temp2 = (u8) ((state->original_fcw & 0x00ff0000) >> 16);
	ret = FUNC5(state->d, 0xae1a, temp0);
	if (ret)
		return ret;
	ret = FUNC5(state->d, 0xae19, temp1);
	if (ret)
		return ret;
	ret = FUNC5(state->d, 0xae18, temp2);
	if (ret)
		return ret;

	/* restore original TOPs */
	FUNC9("restore original TOPs\n");
	ret =
	    FUNC8(state->d,
				  xd_p_reg_aagc_rf_top_numerator_9_8,
				  xd_p_reg_aagc_rf_top_numerator_7_0, 0, 2,
				  state->original_rf_top);
	if (ret)
		return ret;
	ret =
	    FUNC8(state->d,
				  xd_p_reg_aagc_if_top_numerator_9_8,
				  xd_p_reg_aagc_if_top_numerator_7_0, 0, 2,
				  state->original_if_top);
	if (ret)
		return ret;
	ret =
	    FUNC8(state->d, 0xA60E, 0xA60A, 4, 2,
				  state->original_aci0_if_top);
	if (ret)
		return ret;
	ret =
	    FUNC8(state->d, 0xA60E, 0xA60B, 6, 2,
				  state->original_aci1_if_top);
	if (ret)
		return ret;

	/* select bandwidth */
	FUNC9("select bandwidth");
	ret = FUNC1(state->d, fep->bandwidth_hz);
	if (ret)
		return ret;
	ret = FUNC0(state->d, fep->bandwidth_hz);
	if (ret)
		return ret;

	/* clear easy mode flag */
	FUNC9("clear easy mode flag\n");
	ret = FUNC5(state->d, 0xaefd, 0);
	if (ret)
		return ret;

	/* set unplug threshold to original value */
	FUNC9("set unplug threshold to original value\n");
	ret =
	    FUNC5(state->d, xd_p_reg_unplug_th,
				       state->original_if_unplug_th);
	if (ret)
		return ret;
	/* set tuner */
	FUNC9("set tuner\n");
	ret = fe->ops.tuner_ops.set_params(fe);
	if (ret)
		return ret;

	/* trigger ofsm */
	FUNC9("trigger ofsm\n");
	temp = 0;
	ret = FUNC7(state->d, 0xffff, &temp, 1);
	if (ret)
		return ret;

	/* clear retrain and freeze flag */
	FUNC9("clear retrain and freeze flag\n");
	ret =
	    FUNC6(state->d,
				       xd_p_reg_api_retrain_request,
				       reg_api_retrain_request_pos, 2, 0);
	if (ret)
		return ret;

	/* reset pre viterbi and post viterbi registers and statistics */
	FUNC4(fe);
	FUNC3(fe);
	state->pre_vit_error_count = 0;
	state->pre_vit_bit_count = 0;
	state->ber = 0;
	state->post_vit_error_count = 0;
	/* state->unc = 0; commented out since it should be ever increasing */
	state->abort_count = 0;

	state->next_status_check = jiffies;
	state->strong = -1;

	return 0;
}