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
typedef  int u32 ;
typedef  int u16 ;
struct chan_centers {int synth_center; } ;
struct ath_hw {struct ath9k_channel* curchan; scalar_t__ is_clk_25mhz; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_65NM_CH0_SYNTH4 ; 
 int /*<<< orphan*/  AR_PHY_65NM_CH0_SYNTH7 ; 
 int /*<<< orphan*/  AR_PHY_SYNTH4_LONG_SHIFT_SELECT ; 
 int /*<<< orphan*/  AR_PHY_SYNTH_CONTROL ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*,struct ath9k_channel*,struct chan_centers*) ; 

__attribute__((used)) static int FUNC12(struct ath_hw *ah, struct ath9k_channel *chan)
{
	u16 bMode, fracMode = 0, aModeRefSel = 0;
	u32 freq, chan_frac, div, channelSel = 0, reg32 = 0;
	struct chan_centers centers;
	int loadSynthChannel;

	FUNC11(ah, chan, &centers);
	freq = centers.synth_center;

	if (freq < 4800) {     /* 2 GHz, fractional mode */
		if (FUNC0(ah) || FUNC2(ah) ||
		    FUNC3(ah) || FUNC4(ah) ||
		    FUNC5(ah) || FUNC6(ah)) {
			if (ah->is_clk_25mhz)
				div = 75;
			else
				div = 120;

			channelSel = (freq * 4) / div;
			chan_frac = (((freq * 4) % div) * 0x20000) / div;
			channelSel = (channelSel << 17) | chan_frac;
		} else if (FUNC1(ah)) {
			if (ah->is_clk_25mhz) {
				channelSel = (freq * 2) / 75;
				chan_frac = (((freq * 2) % 75) * 0x20000) / 75;
				channelSel = (channelSel << 17) | chan_frac;
			} else {
				channelSel = FUNC7(freq) >> 1;
			}
		} else {
			channelSel = FUNC7(freq);
		}
		/* Set to 2G mode */
		bMode = 1;
	} else {
		if ((FUNC1(ah) || FUNC4(ah) ||
		     FUNC3(ah) || FUNC5(ah)) &&
		    ah->is_clk_25mhz) {
			channelSel = freq / 75;
			chan_frac = ((freq % 75) * 0x20000) / 75;
			channelSel = (channelSel << 17) | chan_frac;
		} else {
			channelSel = FUNC8(freq);
			/* Doubler is ON, so, divide channelSel by 2. */
			channelSel >>= 1;
		}
		/* Set to 5G mode */
		bMode = 0;
	}

	/* Enable fractional mode for all channels */
	fracMode = 1;
	aModeRefSel = 0;
	loadSynthChannel = 0;

	reg32 = (bMode << 29);
	FUNC10(ah, AR_PHY_SYNTH_CONTROL, reg32);

	/* Enable Long shift Select for Synthesizer */
	FUNC9(ah, AR_PHY_65NM_CH0_SYNTH4,
		      AR_PHY_SYNTH4_LONG_SHIFT_SELECT, 1);

	/* Program Synth. setting */
	reg32 = (channelSel << 2) | (fracMode << 30) |
		(aModeRefSel << 28) | (loadSynthChannel << 31);
	FUNC10(ah, AR_PHY_65NM_CH0_SYNTH7, reg32);

	/* Toggle Load Synth channel bit */
	loadSynthChannel = 1;
	reg32 = (channelSel << 2) | (fracMode << 30) |
		(aModeRefSel << 28) | (loadSynthChannel << 31);
	FUNC10(ah, AR_PHY_65NM_CH0_SYNTH7, reg32);

	ah->curchan = chan;

	return 0;
}