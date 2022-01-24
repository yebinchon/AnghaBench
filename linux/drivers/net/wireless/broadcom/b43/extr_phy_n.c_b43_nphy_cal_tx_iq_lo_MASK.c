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
typedef  size_t u16 ;
struct nphy_txgains {int dummy; } ;
struct nphy_iqcal_params {size_t cal_gain; int* ncorr; } ;
struct b43_phy {int rev; TYPE_3__* chandef; struct b43_phy_n* n; } ;
struct b43_wldev {struct b43_phy phy; int /*<<< orphan*/  wl; } ;
struct TYPE_5__ {int /*<<< orphan*/  channel_type; int /*<<< orphan*/  center_freq; } ;
struct b43_phy_n {int hang_avoid; int mphase_cal_phase_id; size_t* mphase_txcal_bestcoeffs; int txiqlocal_coeffsvalid; size_t* txiqlocal_bestc; size_t mphase_txcal_cmdidx; TYPE_2__ txiqlocal_chanspec; scalar_t__ mphase_txcal_numcmds; scalar_t__ ipa2g_on; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct TYPE_4__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_IQLOCAL_CMD ; 
 int /*<<< orphan*/  B43_NPHY_IQLOCAL_CMDGCTL ; 
 int /*<<< orphan*/  B43_NPHY_IQLOCAL_CMDNNUM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 size_t B43_NTAB_TX_IQLO_CAL_CMDS_FULLCAL ; 
 size_t B43_NTAB_TX_IQLO_CAL_CMDS_FULLCAL_REV3 ; 
 size_t B43_NTAB_TX_IQLO_CAL_CMDS_RECAL ; 
 size_t B43_NTAB_TX_IQLO_CAL_CMDS_RECAL_REV3 ; 
 int B43_NTAB_TX_IQLO_CAL_STARTCOEFS ; 
 int B43_NTAB_TX_IQLO_CAL_STARTCOEFS_REV3 ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,struct nphy_txgains,struct nphy_iqcal_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*) ; 
 int FUNC11 (struct b43_wldev*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct b43_wldev*,size_t) ; 
 size_t FUNC13 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_wldev*,int /*<<< orphan*/ ,int,size_t*) ; 
 int /*<<< orphan*/  FUNC15 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct b43_wldev*,int /*<<< orphan*/ ,int,size_t const*) ; 
 size_t FUNC17 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct b43_wldev*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*) ; 
 size_t FUNC20 (size_t,size_t) ; 
 size_t* tbl_tx_iqlo_cal_cmds_fullcal ; 
 size_t* tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3 ; 
 size_t* tbl_tx_iqlo_cal_cmds_recal ; 
 size_t* tbl_tx_iqlo_cal_cmds_recal_nphyrev3 ; 
 size_t* tbl_tx_iqlo_cal_iqimb_ladder_20 ; 
 size_t* tbl_tx_iqlo_cal_iqimb_ladder_40 ; 
 size_t* tbl_tx_iqlo_cal_loft_ladder_20 ; 
 size_t* tbl_tx_iqlo_cal_loft_ladder_40 ; 
 size_t* tbl_tx_iqlo_cal_startcoefs ; 
 size_t* tbl_tx_iqlo_cal_startcoefs_nphyrev3 ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

__attribute__((used)) static int FUNC22(struct b43_wldev *dev,
				struct nphy_txgains target,
				bool full, bool mphase)
{
	struct b43_phy *phy = &dev->phy;
	struct b43_phy_n *nphy = dev->phy.n;
	int i;
	int error = 0;
	int freq;
	bool avoid = false;
	u8 length;
	u16 tmp, core, type, count, max, numb, last = 0, cmd;
	const u16 *table;
	bool phy6or5x;

	u16 buffer[11];
	u16 diq_start = 0;
	u16 save[2];
	u16 gain[2];
	struct nphy_iqcal_params params[2];
	bool updated[2] = { };

	FUNC5(dev, true);

	if (dev->phy.rev >= 4) {
		avoid = nphy->hang_avoid;
		nphy->hang_avoid = false;
	}

	FUNC14(dev, FUNC0(7, 0x110), 2, save);

	for (i = 0; i < 2; i++) {
		FUNC3(dev, i, target, &params[i]);
		gain[i] = params[i].cal_gain;
	}

	FUNC16(dev, FUNC0(7, 0x110), 2, gain);

	FUNC9(dev);
	FUNC8(dev);

	phy6or5x = dev->phy.rev >= 6 ||
		(dev->phy.rev == 5 && nphy->ipa2g_on &&
		FUNC1(dev->wl) == NL80211_BAND_2GHZ);
	if (phy6or5x) {
		if (FUNC2(dev)) {
			FUNC16(dev, FUNC0(15, 0), 18,
					tbl_tx_iqlo_cal_loft_ladder_40);
			FUNC16(dev, FUNC0(15, 32), 18,
					tbl_tx_iqlo_cal_iqimb_ladder_40);
		} else {
			FUNC16(dev, FUNC0(15, 0), 18,
					tbl_tx_iqlo_cal_loft_ladder_20);
			FUNC16(dev, FUNC0(15, 32), 18,
					tbl_tx_iqlo_cal_iqimb_ladder_20);
		}
	}

	if (phy->rev >= 19) {
		/* TODO */
	} else if (phy->rev >= 7) {
		FUNC18(dev, B43_NPHY_IQLOCAL_CMDGCTL, 0x8AD9);
	} else {
		FUNC18(dev, B43_NPHY_IQLOCAL_CMDGCTL, 0x8AA9);
	}

	if (!FUNC2(dev))
		freq = 2500;
	else
		freq = 5000;

	if (nphy->mphase_cal_phase_id > 2)
		FUNC4(dev, (FUNC2(dev) ? 40 : 20) * 8,
				     0xFFFF, 0, true, false, false);
	else
		error = FUNC11(dev, freq, 250, true, false, false);

	if (error == 0) {
		if (nphy->mphase_cal_phase_id > 2) {
			table = nphy->mphase_txcal_bestcoeffs;
			length = 11;
			if (dev->phy.rev < 3)
				length -= 2;
		} else {
			if (!full && nphy->txiqlocal_coeffsvalid) {
				table = nphy->txiqlocal_bestc;
				length = 11;
				if (dev->phy.rev < 3)
					length -= 2;
			} else {
				full = true;
				if (dev->phy.rev >= 3) {
					table = tbl_tx_iqlo_cal_startcoefs_nphyrev3;
					length = B43_NTAB_TX_IQLO_CAL_STARTCOEFS_REV3;
				} else {
					table = tbl_tx_iqlo_cal_startcoefs;
					length = B43_NTAB_TX_IQLO_CAL_STARTCOEFS;
				}
			}
		}

		FUNC16(dev, FUNC0(15, 64), length, table);

		if (full) {
			if (dev->phy.rev >= 3)
				max = B43_NTAB_TX_IQLO_CAL_CMDS_FULLCAL_REV3;
			else
				max = B43_NTAB_TX_IQLO_CAL_CMDS_FULLCAL;
		} else {
			if (dev->phy.rev >= 3)
				max = B43_NTAB_TX_IQLO_CAL_CMDS_RECAL_REV3;
			else
				max = B43_NTAB_TX_IQLO_CAL_CMDS_RECAL;
		}

		if (mphase) {
			count = nphy->mphase_txcal_cmdidx;
			numb = FUNC20(max,
				(u16)(count + nphy->mphase_txcal_numcmds));
		} else {
			count = 0;
			numb = max;
		}

		for (; count < numb; count++) {
			if (full) {
				if (dev->phy.rev >= 3)
					cmd = tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3[count];
				else
					cmd = tbl_tx_iqlo_cal_cmds_fullcal[count];
			} else {
				if (dev->phy.rev >= 3)
					cmd = tbl_tx_iqlo_cal_cmds_recal_nphyrev3[count];
				else
					cmd = tbl_tx_iqlo_cal_cmds_recal[count];
			}

			core = (cmd & 0x3000) >> 12;
			type = (cmd & 0x0F00) >> 8;

			if (phy6or5x && updated[core] == 0) {
				FUNC12(dev, core);
				updated[core] = true;
			}

			tmp = (params[core].ncorr[type] << 8) | 0x66;
			FUNC18(dev, B43_NPHY_IQLOCAL_CMDNNUM, tmp);

			if (type == 1 || type == 3 || type == 4) {
				buffer[0] = FUNC13(dev,
						FUNC0(15, 69 + core));
				diq_start = buffer[0];
				buffer[0] = 0;
				FUNC15(dev, FUNC0(15, 69 + core),
						0);
			}

			FUNC18(dev, B43_NPHY_IQLOCAL_CMD, cmd);
			for (i = 0; i < 2000; i++) {
				tmp = FUNC17(dev, B43_NPHY_IQLOCAL_CMD);
				if (tmp & 0xC000)
					break;
				FUNC21(10);
			}

			FUNC14(dev, FUNC0(15, 96), length,
						buffer);
			FUNC16(dev, FUNC0(15, 64), length,
						buffer);

			if (type == 1 || type == 3 || type == 4)
				buffer[0] = diq_start;
		}

		if (mphase)
			nphy->mphase_txcal_cmdidx = (numb >= max) ? 0 : numb;

		last = (dev->phy.rev < 3) ? 6 : 7;

		if (!mphase || nphy->mphase_cal_phase_id == last) {
			FUNC16(dev, FUNC0(15, 96), 4, buffer);
			FUNC14(dev, FUNC0(15, 80), 4, buffer);
			if (dev->phy.rev < 3) {
				buffer[0] = 0;
				buffer[1] = 0;
				buffer[2] = 0;
				buffer[3] = 0;
			}
			FUNC16(dev, FUNC0(15, 88), 4,
						buffer);
			FUNC14(dev, FUNC0(15, 101), 2,
						buffer);
			FUNC16(dev, FUNC0(15, 85), 2,
						buffer);
			FUNC16(dev, FUNC0(15, 93), 2,
						buffer);
			length = 11;
			if (dev->phy.rev < 3)
				length -= 2;
			FUNC14(dev, FUNC0(15, 96), length,
						nphy->txiqlocal_bestc);
			nphy->txiqlocal_coeffsvalid = true;
			nphy->txiqlocal_chanspec.center_freq =
						phy->chandef->chan->center_freq;
			nphy->txiqlocal_chanspec.channel_type =
					FUNC19(phy->chandef);
		} else {
			length = 11;
			if (dev->phy.rev < 3)
				length -= 2;
			FUNC14(dev, FUNC0(15, 96), length,
						nphy->mphase_txcal_bestcoeffs);
		}

		FUNC6(dev);
		FUNC18(dev, B43_NPHY_IQLOCAL_CMDGCTL, 0);
	}

	FUNC7(dev);
	FUNC16(dev, FUNC0(7, 0x110), 2, save);

	if (dev->phy.rev < 2 && (!mphase || nphy->mphase_cal_phase_id == last))
		FUNC10(dev);

	if (dev->phy.rev >= 4)
		nphy->hang_avoid = avoid;

	FUNC5(dev, false);

	return error;
}