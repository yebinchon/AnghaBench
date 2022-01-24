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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct phy_iq_est {int /*<<< orphan*/  q_pwr; int /*<<< orphan*/  i_pwr; } ;
struct nphy_iq_comp {int a0; int b0; int a1; int b1; } ;
struct nphy_ipa_txrxgain {int hpvga; int lpf_biq1; int lpf_biq0; int lna2; int lna1; size_t txpwrindex; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {size_t* nphy_rxcal_pwr_idx; int nphy_gmval; TYPE_1__ pubpi; int /*<<< orphan*/  radio_chanspec; } ;
typedef  size_t s8 ;
typedef  int s16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 size_t NPHY_IPA_RXCAL_MAXGAININDEX ; 
 int /*<<< orphan*/  NPHY_REV7_RfctrlOverride_cmd_rxgain ; 
#define  NPHY_RXCAL_GAIN_DOWN 130 
#define  NPHY_RXCAL_GAIN_INIT 129 
#define  NPHY_RXCAL_GAIN_UP 128 
 int /*<<< orphan*/  NPHY_RXCAL_TONEAMP ; 
 int /*<<< orphan*/  NPHY_RXCAL_TONEFREQ_20MHz ; 
 int /*<<< orphan*/  NPHY_RXCAL_TONEFREQ_40MHz ; 
 int /*<<< orphan*/  NPHY_TBL_ID_RFSEQ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int PHY_CORE_MAX ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int) ; 
 struct nphy_ipa_txrxgain* nphy_ipa_rxcal_gaintbl_2GHz ; 
 struct nphy_ipa_txrxgain* nphy_ipa_rxcal_gaintbl_2GHz_rev7 ; 
 struct nphy_ipa_txrxgain* nphy_ipa_rxcal_gaintbl_5GHz ; 
 struct nphy_ipa_txrxgain* nphy_ipa_rxcal_gaintbl_5GHz_rev7 ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*,int,struct nphy_iq_comp*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,struct phy_iq_est*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*,int,size_t,int) ; 

__attribute__((used)) static void
FUNC15(struct brcms_phy *pi, u8 rx_core,
				 u16 *rxgain, u8 cal_type)
{

	u16 num_samps;
	struct phy_iq_est est[PHY_CORE_MAX];
	u8 tx_core;
	struct nphy_iq_comp save_comp, zero_comp;
	u32 i_pwr, q_pwr, curr_pwr, optim_pwr = 0, prev_pwr = 0,
	    thresh_pwr = 10000;
	s16 desired_log2_pwr, actual_log2_pwr, delta_pwr;
	bool gainctrl_done = false;
	u8 mix_tia_gain = 3;
	s8 optim_gaintbl_index = 0, prev_gaintbl_index = 0;
	s8 curr_gaintbl_index = 3;
	u8 gainctrl_dirn = NPHY_RXCAL_GAIN_INIT;
	const struct nphy_ipa_txrxgain *nphy_rxcal_gaintbl;
	u16 hpvga, lpf_biq1, lpf_biq0, lna2, lna1;
	int fine_gain_idx;
	s8 txpwrindex;
	u16 nphy_rxcal_txgain[2];

	if (FUNC3(pi->pubpi.phy_rev, 7))
		tx_core = rx_core;
	else
		tx_core = 1 - rx_core;

	num_samps = 1024;
	desired_log2_pwr = 13;

	FUNC9(pi, 0, &save_comp);
	zero_comp.a0 = zero_comp.b0 = zero_comp.a1 = zero_comp.b1 = 0x0;
	FUNC9(pi, 1, &zero_comp);

	if (FUNC1(pi->radio_chanspec)) {
		if (FUNC3(pi->pubpi.phy_rev, 7))
			mix_tia_gain = 3;
		else if (FUNC3(pi->pubpi.phy_rev, 4))
			mix_tia_gain = 4;
		else
			mix_tia_gain = 6;
		if (FUNC3(pi->pubpi.phy_rev, 7))
			nphy_rxcal_gaintbl = nphy_ipa_rxcal_gaintbl_5GHz_rev7;
		else
			nphy_rxcal_gaintbl = nphy_ipa_rxcal_gaintbl_5GHz;
	} else {
		if (FUNC3(pi->pubpi.phy_rev, 7))
			nphy_rxcal_gaintbl = nphy_ipa_rxcal_gaintbl_2GHz_rev7;
		else
			nphy_rxcal_gaintbl = nphy_ipa_rxcal_gaintbl_2GHz;
	}

	do {

		hpvga = (FUNC3(pi->pubpi.phy_rev, 7)) ?
			0 : nphy_rxcal_gaintbl[curr_gaintbl_index].hpvga;
		lpf_biq1 = nphy_rxcal_gaintbl[curr_gaintbl_index].lpf_biq1;
		lpf_biq0 = nphy_rxcal_gaintbl[curr_gaintbl_index].lpf_biq0;
		lna2 = nphy_rxcal_gaintbl[curr_gaintbl_index].lna2;
		lna1 = nphy_rxcal_gaintbl[curr_gaintbl_index].lna1;
		txpwrindex = nphy_rxcal_gaintbl[curr_gaintbl_index].txpwrindex;

		if (FUNC3(pi->pubpi.phy_rev, 7))
			FUNC7(
				pi,
				NPHY_REV7_RfctrlOverride_cmd_rxgain,
				((lpf_biq1 << 12) |
				 (lpf_biq0 << 8) |
				 (mix_tia_gain << 4) | (lna2 << 2)
				 | lna1), 0x3, 0);
		else
			FUNC8(pi, (0x1 << 12),
						     ((hpvga << 12) |
						      (lpf_biq1 << 10) |
						      (lpf_biq0 << 8) |
						      (mix_tia_gain << 4) |
						      (lna2 << 2) | lna1), 0x3,
						     0);

		pi->nphy_rxcal_pwr_idx[tx_core] = txpwrindex;

		if (txpwrindex == -1) {
			nphy_rxcal_txgain[0] = 0x8ff0 | pi->nphy_gmval;
			nphy_rxcal_txgain[1] = 0x8ff0 | pi->nphy_gmval;
			FUNC12(pi, NPHY_TBL_ID_RFSEQ,
						 2, 0x110, 16,
						 nphy_rxcal_txgain);
		} else {
			FUNC14(pi, tx_core + 1, txpwrindex,
						 false);
		}

		FUNC13(pi, (FUNC0(pi->radio_chanspec)) ?
				     NPHY_RXCAL_TONEFREQ_40MHz :
				     NPHY_RXCAL_TONEFREQ_20MHz,
				     NPHY_RXCAL_TONEAMP, 0, cal_type, false);

		FUNC10(pi, est, num_samps, 32, 0);
		i_pwr = FUNC2(est[rx_core].i_pwr, num_samps);
		q_pwr = FUNC2(est[rx_core].q_pwr, num_samps);
		curr_pwr = i_pwr + q_pwr;

		switch (gainctrl_dirn) {
		case NPHY_RXCAL_GAIN_INIT:
			if (curr_pwr > thresh_pwr) {
				gainctrl_dirn = NPHY_RXCAL_GAIN_DOWN;
				prev_gaintbl_index = curr_gaintbl_index;
				curr_gaintbl_index--;
			} else {
				gainctrl_dirn = NPHY_RXCAL_GAIN_UP;
				prev_gaintbl_index = curr_gaintbl_index;
				curr_gaintbl_index++;
			}
			break;

		case NPHY_RXCAL_GAIN_UP:
			if (curr_pwr > thresh_pwr) {
				gainctrl_done = true;
				optim_pwr = prev_pwr;
				optim_gaintbl_index = prev_gaintbl_index;
			} else {
				prev_gaintbl_index = curr_gaintbl_index;
				curr_gaintbl_index++;
			}
			break;

		case NPHY_RXCAL_GAIN_DOWN:
			if (curr_pwr > thresh_pwr) {
				prev_gaintbl_index = curr_gaintbl_index;
				curr_gaintbl_index--;
			} else {
				gainctrl_done = true;
				optim_pwr = curr_pwr;
				optim_gaintbl_index = curr_gaintbl_index;
			}
			break;

		default:
			break;
		}

		if ((curr_gaintbl_index < 0) ||
		    (curr_gaintbl_index > NPHY_IPA_RXCAL_MAXGAININDEX)) {
			gainctrl_done = true;
			optim_pwr = curr_pwr;
			optim_gaintbl_index = prev_gaintbl_index;
		} else {
			prev_pwr = curr_pwr;
		}

		FUNC11(pi);
	} while (!gainctrl_done);

	hpvga = nphy_rxcal_gaintbl[optim_gaintbl_index].hpvga;
	lpf_biq1 = nphy_rxcal_gaintbl[optim_gaintbl_index].lpf_biq1;
	lpf_biq0 = nphy_rxcal_gaintbl[optim_gaintbl_index].lpf_biq0;
	lna2 = nphy_rxcal_gaintbl[optim_gaintbl_index].lna2;
	lna1 = nphy_rxcal_gaintbl[optim_gaintbl_index].lna1;
	txpwrindex = nphy_rxcal_gaintbl[optim_gaintbl_index].txpwrindex;

	actual_log2_pwr = FUNC6(optim_pwr);
	delta_pwr = desired_log2_pwr - actual_log2_pwr;

	if (FUNC3(pi->pubpi.phy_rev, 7)) {
		fine_gain_idx = (int)lpf_biq1 + delta_pwr;

		if (fine_gain_idx + (int)lpf_biq0 > 10)
			lpf_biq1 = 10 - lpf_biq0;
		else
			lpf_biq1 = (u16) FUNC4(fine_gain_idx, 0);

		FUNC7(
			pi,
			NPHY_REV7_RfctrlOverride_cmd_rxgain,
			((lpf_biq1 << 12) |
			 (lpf_biq0 << 8) |
			 (mix_tia_gain << 4) |
			 (lna2 << 2) | lna1), 0x3,
			0);
	} else {
		hpvga = (u16) FUNC4(FUNC5(((int)hpvga) + delta_pwr, 10), 0);
		FUNC8(pi, (0x1 << 12),
					     ((hpvga << 12) |
					      (lpf_biq1 << 10) |
					      (lpf_biq0 << 8) |
					      (mix_tia_gain << 4) |
					      (lna2 << 2) |
					      lna1), 0x3, 0);
	}

	if (rxgain != NULL) {
		*rxgain++ = lna1;
		*rxgain++ = lna2;
		*rxgain++ = mix_tia_gain;
		*rxgain++ = lpf_biq0;
		*rxgain++ = lpf_biq1;
		*rxgain = hpvga;
	}

	FUNC9(pi, 1, &save_comp);
}