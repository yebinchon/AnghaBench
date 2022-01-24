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
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN_ACTIVE ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,char*) ; 

__attribute__((used)) static void FUNC3(struct ath_hw *ah)
{
	struct ath_common *common = FUNC0(ah);

	/* Poll for spectral scan complete */
	if (!FUNC1(ah, AR_PHY_SPECTRAL_SCAN,
			   AR_PHY_SPECTRAL_SCAN_ACTIVE,
			   0, AH_WAIT_TIMEOUT)) {
		FUNC2(common, "spectral scan wait failed\n");
		return;
	}
}