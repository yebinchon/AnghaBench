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
typedef  int u64 ;
struct dvb_frontend {struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {scalar_t__ pre_vit_bit_count; int ber; scalar_t__ abort_count; int /*<<< orphan*/  unc; int /*<<< orphan*/  post_vit_bit_count; int /*<<< orphan*/  post_vit_error_count; scalar_t__ pre_vit_error_count; } ;

/* Variables and functions */
 int FUNC0 (struct dvb_frontend*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC1 (struct dvb_frontend*,scalar_t__*,scalar_t__*) ; 
 int FUNC2 (struct dvb_frontend*,int*) ; 
 int FUNC3 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct dvb_frontend *fe)
{
	struct af9005_fe_state *state = fe->demodulator_priv;
	int ret, fecavailable;
	u64 numerator, denominator;

	FUNC5("GET STATISTIC\n");
	ret = FUNC2(fe, &fecavailable);
	if (ret)
		return ret;
	if (!fecavailable) {
		FUNC5("fecmon not available\n");
		return 0;
	}

	ret = FUNC1(fe, &state->pre_vit_error_count,
					       &state->pre_vit_bit_count);
	if (ret == 0) {
		FUNC4(fe);
		if (state->pre_vit_bit_count > 0) {
			/* according to v 0.0.4 of the dvb api ber should be a multiple
			   of 10E-9 so we have to multiply the error count by
			   10E9=1000000000 */
			numerator =
			    (u64) state->pre_vit_error_count * (u64) 1000000000;
			denominator = (u64) state->pre_vit_bit_count;
			state->ber = FUNC6(numerator, denominator);
		} else {
			state->ber = 0xffffffff;
		}
	}

	ret = FUNC0(fe, &state->post_vit_error_count,
				      &state->post_vit_bit_count,
				      &state->abort_count);
	if (ret == 0) {
		ret = FUNC3(fe);
		state->unc += state->abort_count;
		if (ret)
			return ret;
	}
	return 0;
}