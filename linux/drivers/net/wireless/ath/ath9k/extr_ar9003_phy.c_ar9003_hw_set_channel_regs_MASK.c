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
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CST ; 
 int AR_CST_TIMEOUT_LIMIT_S ; 
 int /*<<< orphan*/  AR_GTXTO ; 
 int AR_GTXTO_TIMEOUT_LIMIT_S ; 
 int AR_PHY_GC_DYN2040_EN ; 
 int AR_PHY_GC_DYN2040_PRI_CH ; 
 int AR_PHY_GC_ENABLE_DAC_FIFO ; 
 int AR_PHY_GC_GF_DETECT_EN ; 
 int AR_PHY_GC_HT_EN ; 
 int AR_PHY_GC_SHORT_GI_40 ; 
 int AR_PHY_GC_SINGLE_HT_LTF1 ; 
 int /*<<< orphan*/  AR_PHY_GEN_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 scalar_t__ FUNC2 (struct ath9k_channel*) ; 
 int FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,struct ath9k_channel*) ; 

__attribute__((used)) static void FUNC6(struct ath_hw *ah,
				       struct ath9k_channel *chan)
{
	u32 phymode;
	u32 enableDacFifo = 0;

	enableDacFifo =
		(FUNC3(ah, AR_PHY_GEN_CTRL) & AR_PHY_GC_ENABLE_DAC_FIFO);

	/* Enable 11n HT, 20 MHz */
	phymode = AR_PHY_GC_HT_EN | AR_PHY_GC_SHORT_GI_40 | enableDacFifo;

	if (!FUNC0(ah))
		phymode |= AR_PHY_GC_SINGLE_HT_LTF1;

	/* Configure baseband for dynamic 20/40 operation */
	if (FUNC1(chan)) {
		phymode |= AR_PHY_GC_DYN2040_EN;
		/* Configure control (primary) channel at +-10MHz */
		if (FUNC2(chan))
			phymode |= AR_PHY_GC_DYN2040_PRI_CH;

	}

	/* make sure we preserve INI settings */
	phymode |= FUNC3(ah, AR_PHY_GEN_CTRL);
	/* turn off Green Field detection for STA for now */
	phymode &= ~AR_PHY_GC_GF_DETECT_EN;

	FUNC4(ah, AR_PHY_GEN_CTRL, phymode);

	/* Configure MAC for 20/40 operation */
	FUNC5(ah, chan);

	/* global transmit timeout (25 TUs default)*/
	FUNC4(ah, AR_GTXTO, 25 << AR_GTXTO_TIMEOUT_LIMIT_S);
	/* carrier sense timeout */
	FUNC4(ah, AR_CST, 0xF << AR_CST_TIMEOUT_LIMIT_S);
}