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
typedef  size_t u8 ;
typedef  int u32 ;
struct link_vars {int dummy; } ;
struct link_params {size_t port; int feature_config_flags; struct bnx2x* bp; } ;
struct bnx2x_nig_brb_pfc_port_params {int llfc_out_en; int llfc_enable; int pause_enable; int pkt_priority_to_cos; size_t num_of_rx_cos_priority_mask; int llfc_high_priority_classes; int llfc_low_priority_classes; int /*<<< orphan*/ * rx_cos_priority_mask; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FEATURE_CONFIG_PFC_ENABLED ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int NIG_LLH0_XCM_MASK_REG_LLH0_XCM_MASK_BCN ; 
 int NIG_LLH1_XCM_MASK_REG_LLH1_XCM_MASK_BCN ; 
 int /*<<< orphan*/  NIG_REG_BRB0_PAUSE_IN_EN ; 
 int /*<<< orphan*/  NIG_REG_BRB1_PAUSE_IN_EN ; 
 int /*<<< orphan*/  NIG_REG_LLFC_EGRESS_SRC_ENABLE_0 ; 
 int /*<<< orphan*/  NIG_REG_LLFC_EGRESS_SRC_ENABLE_1 ; 
 int /*<<< orphan*/  NIG_REG_LLFC_ENABLE_0 ; 
 int /*<<< orphan*/  NIG_REG_LLFC_ENABLE_1 ; 
 int /*<<< orphan*/  NIG_REG_LLFC_HIGH_PRIORITY_CLASSES_0 ; 
 int /*<<< orphan*/  NIG_REG_LLFC_HIGH_PRIORITY_CLASSES_1 ; 
 int /*<<< orphan*/  NIG_REG_LLFC_LOW_PRIORITY_CLASSES_0 ; 
 int /*<<< orphan*/  NIG_REG_LLFC_LOW_PRIORITY_CLASSES_1 ; 
 int /*<<< orphan*/  NIG_REG_LLFC_OUT_EN_0 ; 
 int /*<<< orphan*/  NIG_REG_LLFC_OUT_EN_1 ; 
 int /*<<< orphan*/  NIG_REG_LLH0_XCM_MASK ; 
 int /*<<< orphan*/  NIG_REG_LLH1_XCM_MASK ; 
 int /*<<< orphan*/  NIG_REG_P0_HWPFC_ENABLE ; 
 int /*<<< orphan*/  NIG_REG_P0_PKT_PRIORITY_TO_COS ; 
 int /*<<< orphan*/  NIG_REG_P1_HWPFC_ENABLE ; 
 int /*<<< orphan*/  NIG_REG_P1_PKT_PRIORITY_TO_COS ; 
 int /*<<< orphan*/  NIG_REG_PAUSE_ENABLE_0 ; 
 int /*<<< orphan*/  NIG_REG_PAUSE_ENABLE_1 ; 
 int /*<<< orphan*/  NIG_REG_PPP_ENABLE_0 ; 
 int /*<<< orphan*/  NIG_REG_PPP_ENABLE_1 ; 
 int /*<<< orphan*/  NIG_REG_XCM0_OUT_EN ; 
 int /*<<< orphan*/  NIG_REG_XCM1_OUT_EN ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,size_t,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC5(struct link_params *params,
		struct link_vars *vars,
		struct bnx2x_nig_brb_pfc_port_params *nig_params)
{
	u32 xcm_mask = 0, ppp_enable = 0, pause_enable = 0, llfc_out_en = 0;
	u32 llfc_enable = 0, xcm_out_en = 0, hwpfc_enable = 0;
	u32 pkt_priority_to_cos = 0;
	struct bnx2x *bp = params->bp;
	u8 port = params->port;

	int set_pfc = params->feature_config_flags &
		FEATURE_CONFIG_PFC_ENABLED;
	FUNC1(NETIF_MSG_LINK, "updating pfc nig parameters\n");

	/* When NIG_LLH0_XCM_MASK_REG_LLHX_XCM_MASK_BCN bit is set
	 * MAC control frames (that are not pause packets)
	 * will be forwarded to the XCM.
	 */
	xcm_mask = FUNC2(bp, port ? NIG_REG_LLH1_XCM_MASK :
			  NIG_REG_LLH0_XCM_MASK);
	/* NIG params will override non PFC params, since it's possible to
	 * do transition from PFC to SAFC
	 */
	if (set_pfc) {
		pause_enable = 0;
		llfc_out_en = 0;
		llfc_enable = 0;
		if (FUNC0(bp))
			ppp_enable = 0;
		else
			ppp_enable = 1;
		xcm_mask &= ~(port ? NIG_LLH1_XCM_MASK_REG_LLH1_XCM_MASK_BCN :
				     NIG_LLH0_XCM_MASK_REG_LLH0_XCM_MASK_BCN);
		xcm_out_en = 0;
		hwpfc_enable = 1;
	} else  {
		if (nig_params) {
			llfc_out_en = nig_params->llfc_out_en;
			llfc_enable = nig_params->llfc_enable;
			pause_enable = nig_params->pause_enable;
		} else  /* Default non PFC mode - PAUSE */
			pause_enable = 1;

		xcm_mask |= (port ? NIG_LLH1_XCM_MASK_REG_LLH1_XCM_MASK_BCN :
			NIG_LLH0_XCM_MASK_REG_LLH0_XCM_MASK_BCN);
		xcm_out_en = 1;
	}

	if (FUNC0(bp))
		FUNC3(bp, port ? NIG_REG_BRB1_PAUSE_IN_EN :
		       NIG_REG_BRB0_PAUSE_IN_EN, pause_enable);
	FUNC3(bp, port ? NIG_REG_LLFC_OUT_EN_1 :
	       NIG_REG_LLFC_OUT_EN_0, llfc_out_en);
	FUNC3(bp, port ? NIG_REG_LLFC_ENABLE_1 :
	       NIG_REG_LLFC_ENABLE_0, llfc_enable);
	FUNC3(bp, port ? NIG_REG_PAUSE_ENABLE_1 :
	       NIG_REG_PAUSE_ENABLE_0, pause_enable);

	FUNC3(bp, port ? NIG_REG_PPP_ENABLE_1 :
	       NIG_REG_PPP_ENABLE_0, ppp_enable);

	FUNC3(bp, port ? NIG_REG_LLH1_XCM_MASK :
	       NIG_REG_LLH0_XCM_MASK, xcm_mask);

	FUNC3(bp, port ? NIG_REG_LLFC_EGRESS_SRC_ENABLE_1 :
	       NIG_REG_LLFC_EGRESS_SRC_ENABLE_0, 0x7);

	/* Output enable for RX_XCM # IF */
	FUNC3(bp, port ? NIG_REG_XCM1_OUT_EN :
	       NIG_REG_XCM0_OUT_EN, xcm_out_en);

	/* HW PFC TX enable */
	FUNC3(bp, port ? NIG_REG_P1_HWPFC_ENABLE :
	       NIG_REG_P0_HWPFC_ENABLE, hwpfc_enable);

	if (nig_params) {
		u8 i = 0;
		pkt_priority_to_cos = nig_params->pkt_priority_to_cos;

		for (i = 0; i < nig_params->num_of_rx_cos_priority_mask; i++)
			FUNC4(bp, i,
		nig_params->rx_cos_priority_mask[i], port);

		FUNC3(bp, port ? NIG_REG_LLFC_HIGH_PRIORITY_CLASSES_1 :
		       NIG_REG_LLFC_HIGH_PRIORITY_CLASSES_0,
		       nig_params->llfc_high_priority_classes);

		FUNC3(bp, port ? NIG_REG_LLFC_LOW_PRIORITY_CLASSES_1 :
		       NIG_REG_LLFC_LOW_PRIORITY_CLASSES_0,
		       nig_params->llfc_low_priority_classes);
	}
	FUNC3(bp, port ? NIG_REG_P1_PKT_PRIORITY_TO_COS :
	       NIG_REG_P0_PKT_PRIORITY_TO_COS,
	       pkt_priority_to_cos);
}