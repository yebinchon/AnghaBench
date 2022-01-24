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
typedef  int u32 ;
struct ath_hw {int dummy; } ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct TYPE_2__ {scalar_t__ ath_bus_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CFG ; 
 int AR_CFG_SWRB ; 
 int AR_CFG_SWRD ; 
 int AR_CFG_SWRG ; 
 int AR_CFG_SWTB ; 
 int AR_CFG_SWTD ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*) ; 
 scalar_t__ ATH_USB ; 
 int INIT_CONFIG_STATUS ; 
 int FUNC7 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RESET ; 
 struct ath_common* FUNC10 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_common*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC12(struct ath_hw *ah)
{
	struct ath_common *common = FUNC10(ah);

	if (FUNC0(ah)) {
		u32 mask;
		mask = FUNC7(ah, AR_CFG);
		if (mask & (AR_CFG_SWRB | AR_CFG_SWTB | AR_CFG_SWRG)) {
			FUNC11(common, RESET, "CFG Byte Swap Set 0x%x\n",
				mask);
		} else {
			mask = INIT_CONFIG_STATUS | AR_CFG_SWRB | AR_CFG_SWTB;
			FUNC9(ah, AR_CFG, mask);
			FUNC11(common, RESET, "Setting CFG 0x%x\n",
				FUNC7(ah, AR_CFG));
		}
	} else {
		if (common->bus_ops->ath_bus_type == ATH_USB) {
			/* Configure AR9271 target WLAN */
			if (FUNC1(ah))
				FUNC9(ah, AR_CFG, AR_CFG_SWRB | AR_CFG_SWTB);
			else
				FUNC9(ah, AR_CFG, AR_CFG_SWTD | AR_CFG_SWRD);
		}
#ifdef __BIG_ENDIAN
		else if (AR_SREV_9330(ah) || AR_SREV_9340(ah) ||
			 AR_SREV_9550(ah) || AR_SREV_9531(ah) ||
			 AR_SREV_9561(ah))
			REG_RMW(ah, AR_CFG, AR_CFG_SWRB | AR_CFG_SWTB, 0);
		else
			REG_WRITE(ah, AR_CFG, AR_CFG_SWTD | AR_CFG_SWRD);
#endif
	}
}