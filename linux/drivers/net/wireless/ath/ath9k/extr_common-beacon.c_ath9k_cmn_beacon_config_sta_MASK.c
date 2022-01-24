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
typedef  int /*<<< orphan*/  u64 ;
struct ath_hw {int dummy; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct ath_beacon_config {int intval; int beacon_interval; int dtim_period; int /*<<< orphan*/  bmiss_timeout; void* nexttbtt; } ;
struct ath9k_beacon_state {int bs_intval; int bs_dtimperiod; int bs_bmissthreshold; int bs_sleepduration; int /*<<< orphan*/  bs_tsfoor_threshold; void* bs_nextdtim; void* bs_nexttbtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_TSFOOR_THRESHOLD ; 
 int /*<<< orphan*/  ATH_OP_PRIM_STA_VIF ; 
 int /*<<< orphan*/  BEACON ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct ath9k_beacon_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct ath_hw *ah,
				 struct ath_beacon_config *conf,
				 struct ath9k_beacon_state *bs)
{
	struct ath_common *common = FUNC4(ah);
	int dtim_intval;
	u64 tsf;

	/* No need to configure beacon if we are not associated */
	if (!FUNC9(ATH_OP_PRIM_STA_VIF, &common->op_flags)) {
		FUNC6(common, BEACON,
			"STA is not yet associated..skipping beacon config\n");
		return -EPERM;
	}

	FUNC7(bs, 0, sizeof(*bs));
	conf->intval = conf->beacon_interval;

	/*
	 * Setup dtim parameters according to
	 * last beacon we received (which may be none).
	 */
	dtim_intval = conf->intval * conf->dtim_period;

	/*
	 * Pull nexttbtt forward to reflect the current
	 * TSF and calculate dtim state for the result.
	 */
	tsf = FUNC5(ah);
	conf->nexttbtt = FUNC3(ah, tsf, conf->intval);

	bs->bs_intval = FUNC2(conf->intval);
	bs->bs_dtimperiod = conf->dtim_period * bs->bs_intval;
	bs->bs_nexttbtt = conf->nexttbtt;
	bs->bs_nextdtim = conf->nexttbtt;
	if (conf->dtim_period > 1)
		bs->bs_nextdtim = FUNC3(ah, tsf, dtim_intval);

	/*
	 * Calculate the number of consecutive beacons to miss* before taking
	 * a BMISS interrupt. The configuration is specified in TU so we only
	 * need calculate based	on the beacon interval.  Note that we clamp the
	 * result to at most 15 beacons.
	 */
	bs->bs_bmissthreshold = FUNC0(conf->bmiss_timeout, conf->intval);
	if (bs->bs_bmissthreshold > 15)
		bs->bs_bmissthreshold = 15;
	else if (bs->bs_bmissthreshold <= 0)
		bs->bs_bmissthreshold = 1;

	/*
	 * Calculate sleep duration. The configuration is given in ms.
	 * We ensure a multiple of the beacon period is used. Also, if the sleep
	 * duration is greater than the DTIM period then it makes senses
	 * to make it a multiple of that.
	 *
	 * XXX fixed at 100ms
	 */

	bs->bs_sleepduration = FUNC2(FUNC8(FUNC1(100),
						  conf->intval));
	if (bs->bs_sleepduration > bs->bs_dtimperiod)
		bs->bs_sleepduration = bs->bs_dtimperiod;

	/* TSF out of range threshold fixed at 1 second */
	bs->bs_tsfoor_threshold = ATH9K_TSFOOR_THRESHOLD;

	FUNC6(common, BEACON, "bmiss: %u sleep: %u\n",
		bs->bs_bmissthreshold, bs->bs_sleepduration);
	return 0;
}