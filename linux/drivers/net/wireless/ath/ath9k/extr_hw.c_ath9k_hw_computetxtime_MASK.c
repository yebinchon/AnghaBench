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
struct ath_hw {int /*<<< orphan*/  curchan; } ;

/* Variables and functions */
 int CCK_PLCP_BITS ; 
 int CCK_PREAMBLE_BITS ; 
 int CCK_SIFS_TIME ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int OFDM_PLCP_BITS ; 
 int OFDM_PREAMBLE_TIME ; 
 int OFDM_PREAMBLE_TIME_HALF ; 
 int OFDM_PREAMBLE_TIME_QUARTER ; 
 int OFDM_SIFS_TIME ; 
 int OFDM_SIFS_TIME_HALF ; 
 int OFDM_SIFS_TIME_QUARTER ; 
 int OFDM_SYMBOL_TIME ; 
 int OFDM_SYMBOL_TIME_HALF ; 
 int OFDM_SYMBOL_TIME_QUARTER ; 
#define  WLAN_RC_PHY_CCK 129 
#define  WLAN_RC_PHY_OFDM 128 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 

u16 FUNC5(struct ath_hw *ah,
			   u8 phy, int kbps,
			   u32 frameLen, u16 rateix,
			   bool shortPreamble)
{
	u32 bitsPerSymbol, numBits, numSymbols, phyTime, txTime;

	if (kbps == 0)
		return 0;

	switch (phy) {
	case WLAN_RC_PHY_CCK:
		phyTime = CCK_PREAMBLE_BITS + CCK_PLCP_BITS;
		if (shortPreamble)
			phyTime >>= 1;
		numBits = frameLen << 3;
		txTime = CCK_SIFS_TIME + phyTime + ((numBits * 1000) / kbps);
		break;
	case WLAN_RC_PHY_OFDM:
		if (ah->curchan && FUNC2(ah->curchan)) {
			bitsPerSymbol =
				((kbps >> 2) * OFDM_SYMBOL_TIME_QUARTER) / 1000;
			numBits = OFDM_PLCP_BITS + (frameLen << 3);
			numSymbols = FUNC0(numBits, bitsPerSymbol);
			txTime = OFDM_SIFS_TIME_QUARTER
				+ OFDM_PREAMBLE_TIME_QUARTER
				+ (numSymbols * OFDM_SYMBOL_TIME_QUARTER);
		} else if (ah->curchan &&
			   FUNC1(ah->curchan)) {
			bitsPerSymbol =
				((kbps >> 1) * OFDM_SYMBOL_TIME_HALF) / 1000;
			numBits = OFDM_PLCP_BITS + (frameLen << 3);
			numSymbols = FUNC0(numBits, bitsPerSymbol);
			txTime = OFDM_SIFS_TIME_HALF +
				OFDM_PREAMBLE_TIME_HALF
				+ (numSymbols * OFDM_SYMBOL_TIME_HALF);
		} else {
			bitsPerSymbol = (kbps * OFDM_SYMBOL_TIME) / 1000;
			numBits = OFDM_PLCP_BITS + (frameLen << 3);
			numSymbols = FUNC0(numBits, bitsPerSymbol);
			txTime = OFDM_SIFS_TIME + OFDM_PREAMBLE_TIME
				+ (numSymbols * OFDM_SYMBOL_TIME);
		}
		break;
	default:
		FUNC4(FUNC3(ah),
			"Unknown phy %u (rate ix %u)\n", phy, rateix);
		txTime = 0;
		break;
	}

	return txTime;
}