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
struct mxl111sf_reg_ctrl_info {int member_0; int member_1; int member_2; } ;
struct mxl111sf_demod_state {int dummy; } ;
struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct mxl111sf_demod_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mxl111sf_demod_state*,struct mxl111sf_reg_ctrl_info*) ; 
 int FUNC2 (struct mxl111sf_demod_state*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend *fe)
{
	struct mxl111sf_demod_state *state = fe->demodulator_priv;
	int ret = 0;

	struct mxl111sf_reg_ctrl_info phy_pll_patch[] = {
		{0x00, 0xff, 0x01}, /* change page to 1 */
		{0x40, 0xff, 0x05},
		{0x40, 0xff, 0x01},
		{0x41, 0xff, 0xca},
		{0x41, 0xff, 0xc0},
		{0x00, 0xff, 0x00}, /* change page to 0 */
		{0,    0,    0}
	};

	FUNC3("()");

	if (fe->ops.tuner_ops.set_params) {
		ret = fe->ops.tuner_ops.set_params(fe);
		if (FUNC4(ret))
			goto fail;
		FUNC0(50);
	}
	ret = FUNC1(state, phy_pll_patch);
	FUNC4(ret);
	FUNC0(50);
	ret = FUNC2(state);
	FUNC4(ret);
	FUNC0(100);
fail:
	return ret;
}