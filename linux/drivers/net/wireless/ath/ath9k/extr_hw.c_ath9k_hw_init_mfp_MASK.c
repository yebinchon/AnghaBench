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
struct ath_hw {int sw_mgmt_crypto_tx; int sw_mgmt_crypto_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_AES_MUTE_MASK1 ; 
 int /*<<< orphan*/  AR_AES_MUTE_MASK1_FC_MGMT ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_PCU_MISC_MODE2 ; 
 int /*<<< orphan*/  AR_PCU_MISC_MODE2_MGMT_CRYPTO_ENABLE ; 
 int /*<<< orphan*/  AR_PCU_MISC_MODE2_NO_CRYPTO_FOR_NON_DATA_PKT ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ath_hw *ah)
{
	/* Setup MFP options for CCMP */
	if (FUNC3(ah)) {
		/* Mask Retry(b11), PwrMgt(b12), MoreData(b13) to 0 in mgmt
		 * frames when constructing CCMP AAD. */
		FUNC5(ah, AR_AES_MUTE_MASK1, AR_AES_MUTE_MASK1_FC_MGMT,
			      0xc7ff);
		if (FUNC2(ah) || FUNC0(ah))
			ah->sw_mgmt_crypto_tx = true;
		else
			ah->sw_mgmt_crypto_tx = false;
		ah->sw_mgmt_crypto_rx = false;
	} else if (FUNC1(ah)) {
		/* Disable hardware crypto for management frames */
		FUNC4(ah, AR_PCU_MISC_MODE2,
			    AR_PCU_MISC_MODE2_MGMT_CRYPTO_ENABLE);
		FUNC6(ah, AR_PCU_MISC_MODE2,
			    AR_PCU_MISC_MODE2_NO_CRYPTO_FOR_NON_DATA_PKT);
		ah->sw_mgmt_crypto_tx = true;
		ah->sw_mgmt_crypto_rx = true;
	} else {
		ah->sw_mgmt_crypto_tx = true;
		ah->sw_mgmt_crypto_rx = true;
	}
}