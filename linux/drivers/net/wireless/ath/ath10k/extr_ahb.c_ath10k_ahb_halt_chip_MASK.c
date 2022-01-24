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
typedef  int u32 ;
struct ath10k_ahb {int /*<<< orphan*/  core_cold_rst; int /*<<< orphan*/  cpu_init_rst; int /*<<< orphan*/  radio_srif_rst; int /*<<< orphan*/  radio_warm_rst; int /*<<< orphan*/  radio_cold_rst; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int AHB_AXI_BUS_HALT_REQ ; 
 int ATH10K_AHB_TCSR_WCSS0_HALTACK ; 
 int ATH10K_AHB_TCSR_WCSS0_HALTREQ ; 
 int ATH10K_AHB_TCSR_WCSS1_HALTACK ; 
 int ATH10K_AHB_TCSR_WCSS1_HALTREQ ; 
 int ATH10K_AHB_TCSR_WIFI0_GLB_CFG ; 
 int ATH10K_AHB_TCSR_WIFI1_GLB_CFG ; 
 int /*<<< orphan*/  ATH10K_AHB_WLAN_CORE_ID_REG ; 
 int /*<<< orphan*/  ATH10K_DBG_AHB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TCSR_WIFIX_GLB_CFG_DISABLE_CORE_CLK ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int,int) ; 
 struct ath10k_ahb* FUNC2 (struct ath10k*) ; 
 int FUNC3 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct ath10k *ar)
{
	struct ath10k_ahb *ar_ahb = FUNC2(ar);
	u32 core_id, glb_cfg_reg, haltreq_reg, haltack_reg;
	u32 val;
	int ret;

	if (FUNC0(ar_ahb->core_cold_rst) ||
	    FUNC0(ar_ahb->radio_cold_rst) ||
	    FUNC0(ar_ahb->radio_warm_rst) ||
	    FUNC0(ar_ahb->radio_srif_rst) ||
	    FUNC0(ar_ahb->cpu_init_rst)) {
		FUNC7(ar, "rst ctrl(s) is/are not initialized\n");
		return;
	}

	core_id = FUNC3(ar, ATH10K_AHB_WLAN_CORE_ID_REG);

	switch (core_id) {
	case 0:
		glb_cfg_reg = ATH10K_AHB_TCSR_WIFI0_GLB_CFG;
		haltreq_reg = ATH10K_AHB_TCSR_WCSS0_HALTREQ;
		haltack_reg = ATH10K_AHB_TCSR_WCSS0_HALTACK;
		break;
	case 1:
		glb_cfg_reg = ATH10K_AHB_TCSR_WIFI1_GLB_CFG;
		haltreq_reg = ATH10K_AHB_TCSR_WCSS1_HALTREQ;
		haltack_reg = ATH10K_AHB_TCSR_WCSS1_HALTACK;
		break;
	default:
		FUNC7(ar, "invalid core id %d found, skipping reset sequence\n",
			   core_id);
		return;
	}

	FUNC1(ar, haltreq_reg, haltack_reg);

	val = FUNC4(ar, glb_cfg_reg);
	val |= TCSR_WIFIX_GLB_CFG_DISABLE_CORE_CLK;
	FUNC5(ar, glb_cfg_reg, val);

	ret = FUNC9(ar_ahb->core_cold_rst);
	if (ret)
		FUNC7(ar, "failed to assert core cold rst: %d\n", ret);
	FUNC8(1);

	ret = FUNC9(ar_ahb->radio_cold_rst);
	if (ret)
		FUNC7(ar, "failed to assert radio cold rst: %d\n", ret);
	FUNC8(1);

	ret = FUNC9(ar_ahb->radio_warm_rst);
	if (ret)
		FUNC7(ar, "failed to assert radio warm rst: %d\n", ret);
	FUNC8(1);

	ret = FUNC9(ar_ahb->radio_srif_rst);
	if (ret)
		FUNC7(ar, "failed to assert radio srif rst: %d\n", ret);
	FUNC8(1);

	ret = FUNC9(ar_ahb->cpu_init_rst);
	if (ret)
		FUNC7(ar, "failed to assert cpu init rst: %d\n", ret);
	FUNC8(10);

	/* Clear halt req and core clock disable req before
	 * deasserting wifi core reset.
	 */
	val = FUNC4(ar, haltreq_reg);
	val &= ~AHB_AXI_BUS_HALT_REQ;
	FUNC5(ar, haltreq_reg, val);

	val = FUNC4(ar, glb_cfg_reg);
	val &= ~TCSR_WIFIX_GLB_CFG_DISABLE_CORE_CLK;
	FUNC5(ar, glb_cfg_reg, val);

	ret = FUNC10(ar_ahb->core_cold_rst);
	if (ret)
		FUNC7(ar, "failed to deassert core cold rst: %d\n", ret);

	FUNC6(ar, ATH10K_DBG_AHB, "core %d reset done\n", core_id);
}