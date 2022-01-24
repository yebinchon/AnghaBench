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
struct ath_hw_private_ops {int /*<<< orphan*/  init_hang_checks; int /*<<< orphan*/  init_mode_gain_regs; } ;
struct ath_hw_ops {int /*<<< orphan*/  config_pci_powersave; } ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  ar9002_hw_configpcipowersave ; 
 int /*<<< orphan*/  ar9002_hw_init_hang_checks ; 
 int /*<<< orphan*/  ar9002_hw_init_mode_gain_regs ; 
 int FUNC5 (struct ath_hw*) ; 
 struct ath_hw_ops* FUNC6 (struct ath_hw*) ; 
 struct ath_hw_private_ops* FUNC7 (struct ath_hw*) ; 

int FUNC8(struct ath_hw *ah)
{
	struct ath_hw_private_ops *priv_ops = FUNC7(ah);
	struct ath_hw_ops *ops = FUNC6(ah);
	int ret;

	ret = FUNC5(ah);
	if (ret)
		return ret;

	priv_ops->init_mode_gain_regs = ar9002_hw_init_mode_gain_regs;
	priv_ops->init_hang_checks = ar9002_hw_init_hang_checks;

	ops->config_pci_powersave = ar9002_hw_configpcipowersave;

	ret = FUNC1(ah);
	if (ret)
		return ret;

	if (FUNC0(ah))
		FUNC4(ah);

	FUNC2(ah);
	FUNC3(ah);
	return 0;
}