#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ath_hw_private_ops {int /*<<< orphan*/  detect_mac_hang; int /*<<< orphan*/  init_hang_checks; int /*<<< orphan*/  init_mode_gain_regs; } ;
struct ath_hw_ops {int /*<<< orphan*/  config_pci_powersave; } ;
struct TYPE_4__ {int /*<<< orphan*/  ia_array; } ;
struct TYPE_3__ {int /*<<< orphan*/  ia_array; } ;
struct ath_hw {TYPE_2__ iniPcieSerdesLowPower; TYPE_1__ iniPcieSerdes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  ar9003_hw_configpcipowersave ; 
 int /*<<< orphan*/  ar9003_hw_detect_mac_hang ; 
 int /*<<< orphan*/  ar9003_hw_init_hang_checks ; 
 int /*<<< orphan*/  ar9003_hw_init_mode_gain_regs ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 struct ath_hw_ops* FUNC7 (struct ath_hw*) ; 
 struct ath_hw_private_ops* FUNC8 (struct ath_hw*) ; 

void FUNC9(struct ath_hw *ah)
{
	struct ath_hw_private_ops *priv_ops = FUNC8(ah);
	struct ath_hw_ops *ops = FUNC7(ah);

	FUNC6(ah);

	if (FUNC0(ah)) {
		FUNC1(!ah->iniPcieSerdes.ia_array);
		FUNC1(!ah->iniPcieSerdesLowPower.ia_array);
	}

	priv_ops->init_mode_gain_regs = ar9003_hw_init_mode_gain_regs;
	priv_ops->init_hang_checks = ar9003_hw_init_hang_checks;
	priv_ops->detect_mac_hang = ar9003_hw_detect_mac_hang;

	ops->config_pci_powersave = ar9003_hw_configpcipowersave;

	FUNC5(ah);
	FUNC3(ah);
	FUNC4(ah);
	FUNC2(ah);
}