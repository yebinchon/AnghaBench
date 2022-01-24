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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int ackto; scalar_t__ enabled; } ;
struct ath_hw {scalar_t__ misc_mode; int slottime; int coverage_class; scalar_t__ globaltxtimeout; TYPE_1__ dynack; struct ath9k_channel* curchan; } ;
struct ath_common {int clockrate; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_D_GBL_IFS_EIFS ; 
 int AR_D_GBL_IFS_EIFS_ASYNC_FIFO ; 
 int /*<<< orphan*/  AR_PCU_MISC ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_TXSIFS ; 
 int AR_TXSIFS_ACK_SHIFT ; 
 int AR_TXSIFS_TIME ; 
 int /*<<< orphan*/  AR_USEC ; 
 scalar_t__ AR_USEC_ASYNC_FIFO ; 
 int AR_USEC_RX_LAT ; 
 int AR_USEC_TX_LAT ; 
 int AR_USEC_USEC ; 
 scalar_t__ FUNC2 (struct ath9k_channel const*) ; 
 scalar_t__ FUNC3 (struct ath9k_channel const*) ; 
 scalar_t__ FUNC4 (struct ath_hw*,struct ath9k_channel const*) ; 
 scalar_t__ FUNC5 (struct ath9k_channel const*) ; 
 scalar_t__ FUNC6 (struct ath9k_channel const*) ; 
 int FUNC7 (scalar_t__,int) ; 
 int FUNC8 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESET ; 
 int FUNC12 (int,int) ; 
 struct ath_common* FUNC13 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct ath_common*,int /*<<< orphan*/ ,char*,scalar_t__) ; 

void FUNC21(struct ath_hw *ah)
{
	struct ath_common *common = FUNC13(ah);
	const struct ath9k_channel *chan = ah->curchan;
	int acktimeout, ctstimeout, ack_offset = 0;
	int slottime;
	int sifstime;
	int rx_lat = 0, tx_lat = 0, eifs = 0, ack_shift = 0;
	u32 reg;

	FUNC20(FUNC13(ah), RESET, "ah->misc_mode 0x%x\n",
		ah->misc_mode);

	if (!chan)
		return;

	if (ah->misc_mode != 0)
		FUNC10(ah, AR_PCU_MISC, ah->misc_mode);

	if (FUNC4(ah, chan))
		rx_lat = 41;
	else
		rx_lat = 37;
	tx_lat = 54;

	if (FUNC3(chan))
		sifstime = 16;
	else
		sifstime = 10;

	if (FUNC5(chan)) {
		eifs = 175;
		rx_lat *= 2;
		tx_lat *= 2;
		if (FUNC4(ah, chan))
		    tx_lat += 11;

		sifstime = 32;
		ack_offset = 16;
		ack_shift = 3;
		slottime = 13;
	} else if (FUNC6(chan)) {
		eifs = 340;
		rx_lat = (rx_lat * 4) - 1;
		tx_lat *= 4;
		if (FUNC4(ah, chan))
		    tx_lat += 22;

		sifstime = 64;
		ack_offset = 32;
		ack_shift = 1;
		slottime = 21;
	} else {
		if (FUNC0(ah) && FUNC1(ah)) {
			eifs = AR_D_GBL_IFS_EIFS_ASYNC_FIFO;
			reg = AR_USEC_ASYNC_FIFO;
		} else {
			eifs = FUNC8(ah, AR_D_GBL_IFS_EIFS)/
				common->clockrate;
			reg = FUNC8(ah, AR_USEC);
		}
		rx_lat = FUNC7(reg, AR_USEC_RX_LAT);
		tx_lat = FUNC7(reg, AR_USEC_TX_LAT);

		slottime = ah->slottime;
	}

	/* As defined by IEEE 802.11-2007 17.3.8.6 */
	slottime += 3 * ah->coverage_class;
	acktimeout = slottime + sifstime + ack_offset;
	ctstimeout = acktimeout;

	/*
	 * Workaround for early ACK timeouts, add an offset to match the
	 * initval's 64us ack timeout value. Use 48us for the CTS timeout.
	 * This was initially only meant to work around an issue with delayed
	 * BA frames in some implementations, but it has been found to fix ACK
	 * timeout issues in other cases as well.
	 */
	if (FUNC2(chan) &&
	    !FUNC5(chan) && !FUNC6(chan)) {
		acktimeout += 64 - sifstime - ah->slottime;
		ctstimeout += 48 - sifstime - ah->slottime;
	}

	if (ah->dynack.enabled) {
		acktimeout = ah->dynack.ackto;
		ctstimeout = acktimeout;
		slottime = (acktimeout - 3) / 2;
	} else {
		ah->dynack.ackto = acktimeout;
	}

	FUNC18(ah, sifstime);
	FUNC19(ah, slottime);
	FUNC15(ah, acktimeout);
	FUNC16(ah, ctstimeout);
	if (ah->globaltxtimeout != (u32) -1)
		FUNC17(ah, ah->globaltxtimeout);

	FUNC11(ah, AR_D_GBL_IFS_EIFS, FUNC14(ah, eifs));
	FUNC9(ah, AR_USEC,
		(common->clockrate - 1) |
		FUNC12(rx_lat, AR_USEC_RX_LAT) |
		FUNC12(tx_lat, AR_USEC_TX_LAT),
		AR_USEC_TX_LAT | AR_USEC_RX_LAT | AR_USEC_USEC);

	if (FUNC5(chan) || FUNC6(chan))
		FUNC9(ah, AR_TXSIFS,
			sifstime | FUNC12(ack_shift, AR_TXSIFS_ACK_SHIFT),
			(AR_TXSIFS_TIME | AR_TXSIFS_ACK_SHIFT));
}