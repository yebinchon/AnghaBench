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
typedef  int /*<<< orphan*/  u32 ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_AHB_GCC_FEPLL_PLL_DIV ; 
 int /*<<< orphan*/  ATH10K_AHB_WIFI_SCRATCH_5_REG ; 
 int /*<<< orphan*/  FW_INDICATOR_ADDRESS ; 
 int /*<<< orphan*/  FW_IND_HOST_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,char*) ; 
 int FUNC8 (struct ath10k*) ; 

__attribute__((used)) static int FUNC9(struct ath10k *ar)
{
	u32 val;
	int ret;

	ret = FUNC1(ar);
	if (ret) {
		FUNC7(ar, "failed to enable clocks\n");
		return ret;
	}

	/* Clock for the target is supplied from outside of target (ie,
	 * external clock module controlled by the host). Target needs
	 * to know what frequency target cpu is configured which is needed
	 * for target internal use. Read target cpu frequency info from
	 * gcc register and write into target's scratch register where
	 * target expects this information.
	 */
	val = FUNC2(ar, ATH10K_AHB_GCC_FEPLL_PLL_DIV);
	FUNC6(ar, ATH10K_AHB_WIFI_SCRATCH_5_REG, val);

	ret = FUNC5(ar);
	if (ret)
		goto err_clk_disable;

	FUNC4(ar);

	FUNC6(ar, FW_INDICATOR_ADDRESS, FW_IND_HOST_READY);

	ret = FUNC8(ar);
	if (ret)
		goto err_halt_chip;

	return 0;

err_halt_chip:
	FUNC3(ar);

err_clk_disable:
	FUNC0(ar);

	return ret;
}