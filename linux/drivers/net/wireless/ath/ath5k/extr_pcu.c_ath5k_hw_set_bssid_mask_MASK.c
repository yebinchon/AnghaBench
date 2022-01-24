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
typedef  int /*<<< orphan*/  u8 ;
struct ath_common {int /*<<< orphan*/  bssidmask; } ;
struct ath5k_hw {scalar_t__ ah_version; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5212 ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 struct ath_common* FUNC0 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct ath5k_hw *ah, const u8 *mask)
{
	struct ath_common *common = FUNC0(ah);

	/* Cache bssid mask so that we can restore it
	 * on reset */
	FUNC2(common->bssidmask, mask, ETH_ALEN);
	if (ah->ah_version == AR5K_AR5212)
		FUNC1(common);
}