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
struct TYPE_2__ {int /*<<< orphan*/  fw_cold_reset_counter; } ;
struct ath10k {int /*<<< orphan*/  data_lock; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  SOC_GLOBAL_RESET_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar)
{
	u32 val;

	FUNC0(ar, ATH10K_DBG_BOOT, "boot cold reset\n");

	FUNC4(&ar->data_lock);

	ar->stats.fw_cold_reset_counter++;

	FUNC5(&ar->data_lock);

	/* Put Target, including PCIe, into RESET. */
	val = FUNC1(ar, SOC_GLOBAL_RESET_ADDRESS);
	val |= 1;
	FUNC2(ar, SOC_GLOBAL_RESET_ADDRESS, val);

	/* After writing into SOC_GLOBAL_RESET to put device into
	 * reset and pulling out of reset pcie may not be stable
	 * for any immediate pcie register access and cause bus error,
	 * add delay before any pcie access request to fix this issue.
	 */
	FUNC3(20);

	/* Pull Target, including PCIe, out of RESET. */
	val &= ~1;
	FUNC2(ar, SOC_GLOBAL_RESET_ADDRESS, val);

	FUNC3(20);

	FUNC0(ar, ATH10K_DBG_BOOT, "boot cold reset complete\n");

	return 0;
}