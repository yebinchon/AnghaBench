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

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN_ACTIVE ; 
 int /*<<< orphan*/  AR_PHY_SPECTRAL_SCAN_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ath_hw *ah)
{
	FUNC0(ah, AR_PHY_SPECTRAL_SCAN,
		    AR_PHY_SPECTRAL_SCAN_ENABLE);
	/* Activate spectral scan */
	FUNC0(ah, AR_PHY_SPECTRAL_SCAN,
		    AR_PHY_SPECTRAL_SCAN_ACTIVE);
}