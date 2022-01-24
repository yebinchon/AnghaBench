#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_8__ {int /*<<< orphan*/  max; } ;
struct TYPE_7__ {int /*<<< orphan*/  max; } ;
struct ath_hw {TYPE_4__ nf_5g; TYPE_3__ nf_2g; TYPE_2__* eep_ops; } ;
struct ath_common {TYPE_1__* bus_ops; } ;
struct TYPE_6__ {int (* get_eeprom ) (struct ath_hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_eeprom_rev ) (struct ath_hw*) ;int /*<<< orphan*/  (* get_eeprom_ver ) (struct ath_hw*) ;} ;
struct TYPE_5__ {scalar_t__ ath_bus_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_CCA_MAX_GOOD_VAL_9300_FCC_2GHZ ; 
 int /*<<< orphan*/  AR_PHY_CCA_MAX_GOOD_VAL_9300_FCC_5GHZ ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ ATH_USB ; 
 int /*<<< orphan*/  CONFIG ; 
 int CTL_FCC ; 
 int /*<<< orphan*/  EEP_REG_0 ; 
 int ENODEV ; 
 int FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 int FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 
 int FUNC9 (struct ath_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ath_hw *ah)
{
	struct ath_common *common = FUNC4(ah);
	int ecode;

	if (common->bus_ops->ath_bus_type != ATH_USB) {
		if (!FUNC3(ah))
			return -ENODEV;
	}

	if (!FUNC0(ah)) {
		ecode = FUNC1(ah);
		if (ecode != 0)
			return ecode;
	}

	ecode = FUNC5(ah);
	if (ecode != 0)
		return ecode;

	FUNC6(FUNC4(ah), CONFIG, "Eeprom VER: %d, REV: %d\n",
		ah->eep_ops->get_eeprom_ver(ah),
		ah->eep_ops->get_eeprom_rev(ah));

	FUNC2(ah);

	/*
	 * EEPROM needs to be initialized before we do this.
	 * This is required for regulatory compliance.
	 */
	if (FUNC0(ah)) {
		u16 regdmn = ah->eep_ops->get_eeprom(ah, EEP_REG_0);
		if ((regdmn & 0xF0) == CTL_FCC) {
			ah->nf_2g.max = AR_PHY_CCA_MAX_GOOD_VAL_9300_FCC_2GHZ;
			ah->nf_5g.max = AR_PHY_CCA_MAX_GOOD_VAL_9300_FCC_5GHZ;
		}
	}

	return 0;
}