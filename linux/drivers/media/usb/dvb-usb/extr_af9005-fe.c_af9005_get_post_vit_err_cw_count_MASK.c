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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct dvb_frontend {struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {int /*<<< orphan*/  d; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  fec_rsd_ber_rdy_len ; 
 int /*<<< orphan*/  fec_rsd_ber_rdy_pos ; 
 int /*<<< orphan*/  xd_p_fec_rsd_packet_unit_15_8 ; 
 int /*<<< orphan*/  xd_p_fec_rsd_packet_unit_7_0 ; 
 int /*<<< orphan*/  xd_r_fec_rsd_abort_packet_cnt_15_8 ; 
 int /*<<< orphan*/  xd_r_fec_rsd_abort_packet_cnt_7_0 ; 
 int /*<<< orphan*/  xd_r_fec_rsd_ber_rdy ; 
 int /*<<< orphan*/  xd_r_fec_rsd_bit_err_cnt_15_8 ; 
 int /*<<< orphan*/  xd_r_fec_rsd_bit_err_cnt_23_16 ; 
 int /*<<< orphan*/  xd_r_fec_rsd_bit_err_cnt_7_0 ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,
					    u32 * post_err_count,
					    u32 * post_cw_count,
					    u16 * abort_count)
{
	struct af9005_fe_state *state = fe->demodulator_priv;
	int ret;
	u32 err_count;
	u32 cw_count;
	u8 temp, temp0, temp1, temp2;
	u16 loc_abort_count;

	*post_err_count = 0;
	*post_cw_count = 0;

	/* check if error bit count is ready */
	ret =
	    FUNC1(state->d, xd_r_fec_rsd_ber_rdy,
				      fec_rsd_ber_rdy_pos, fec_rsd_ber_rdy_len,
				      &temp);
	if (ret)
		return ret;
	if (!temp) {
		FUNC2("rsd counter not ready\n");
		return 100;
	}
	/* get abort count */
	ret =
	    FUNC0(state->d,
				      xd_r_fec_rsd_abort_packet_cnt_7_0,
				      &temp0);
	if (ret)
		return ret;
	ret =
	    FUNC0(state->d,
				      xd_r_fec_rsd_abort_packet_cnt_15_8,
				      &temp1);
	if (ret)
		return ret;
	loc_abort_count = ((u16) temp1 << 8) + temp0;

	/* get error count */
	ret =
	    FUNC0(state->d, xd_r_fec_rsd_bit_err_cnt_7_0,
				      &temp0);
	if (ret)
		return ret;
	ret =
	    FUNC0(state->d, xd_r_fec_rsd_bit_err_cnt_15_8,
				      &temp1);
	if (ret)
		return ret;
	ret =
	    FUNC0(state->d, xd_r_fec_rsd_bit_err_cnt_23_16,
				      &temp2);
	if (ret)
		return ret;
	err_count = ((u32) temp2 << 16) + ((u32) temp1 << 8) + temp0;
	*post_err_count = err_count - (u32) loc_abort_count *8 * 8;

	/* get RSD packet number */
	ret =
	    FUNC0(state->d, xd_p_fec_rsd_packet_unit_7_0,
				      &temp0);
	if (ret)
		return ret;
	ret =
	    FUNC0(state->d, xd_p_fec_rsd_packet_unit_15_8,
				      &temp1);
	if (ret)
		return ret;
	cw_count = ((u32) temp1 << 8) + temp0;
	if (cw_count == 0) {
		FUNC3("wrong RSD packet count");
		return -EIO;
	}
	FUNC2("POST abort count %d err count %d rsd packets %d\n",
		 loc_abort_count, err_count, cw_count);
	*post_cw_count = cw_count - (u32) loc_abort_count;
	*abort_count = loc_abort_count;
	return 0;

}