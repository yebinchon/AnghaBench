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

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_ERR ; 
 int AR_PHY_ERR_CCK_TIMING ; 
 int AR_PHY_ERR_OFDM_TIMING ; 
 int AR_PHY_ERR_RADAR ; 
 int /*<<< orphan*/  AR_RXCFG ; 
 int /*<<< orphan*/  AR_RXCFG_ZLFDMA ; 
 int /*<<< orphan*/  AR_RX_FILTER ; 
 int ATH9K_RX_FILTER_PHYERR ; 
 int ATH9K_RX_FILTER_PHYRADAR ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct ath_hw *ah, u32 bits)
{
	u32 phybits;

	FUNC0(ah);

	FUNC4(ah, AR_RX_FILTER, bits);

	phybits = 0;
	if (bits & ATH9K_RX_FILTER_PHYRADAR)
		phybits |= AR_PHY_ERR_RADAR;
	if (bits & ATH9K_RX_FILTER_PHYERR)
		phybits |= AR_PHY_ERR_OFDM_TIMING | AR_PHY_ERR_CCK_TIMING;
	FUNC4(ah, AR_PHY_ERR, phybits);

	if (phybits)
		FUNC3(ah, AR_RXCFG, AR_RXCFG_ZLFDMA);
	else
		FUNC2(ah, AR_RXCFG, AR_RXCFG_ZLFDMA);

	FUNC1(ah);
}