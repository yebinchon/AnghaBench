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
struct ath_hw {int /*<<< orphan*/  ah_mibStats; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANI ; 
 int /*<<< orphan*/  AR_FILT_CCK ; 
 int /*<<< orphan*/  AR_FILT_OFDM ; 
 int /*<<< orphan*/  AR_MIBC ; 
 int AR_MIBC_CMC ; 
 int AR_MIBC_COW ; 
 int AR_MIBC_FMC ; 
 int AR_MIBC_MCS ; 
 int AR_PHY_ERR_CCK_TIMING ; 
 int /*<<< orphan*/  AR_PHY_ERR_MASK_1 ; 
 int /*<<< orphan*/  AR_PHY_ERR_MASK_2 ; 
 int AR_PHY_ERR_OFDM_TIMING ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

void FUNC6(struct ath_hw *ah)
{
	struct ath_common *common = FUNC3(ah);

	FUNC5(common, ANI, "Enable MIB counters\n");

	FUNC4(ah, &ah->ah_mibStats);

	FUNC0(ah);

	FUNC2(ah, AR_FILT_OFDM, 0);
	FUNC2(ah, AR_FILT_CCK, 0);
	FUNC2(ah, AR_MIBC,
		  ~(AR_MIBC_COW | AR_MIBC_FMC | AR_MIBC_CMC | AR_MIBC_MCS)
		  & 0x0f);
	FUNC2(ah, AR_PHY_ERR_MASK_1, AR_PHY_ERR_OFDM_TIMING);
	FUNC2(ah, AR_PHY_ERR_MASK_2, AR_PHY_ERR_CCK_TIMING);

	FUNC1(ah);
}