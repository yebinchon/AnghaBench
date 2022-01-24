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
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {scalar_t__ device_family; scalar_t__ mq_rx_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FH_MEM_RCSR_CHNL0_CONFIG_REG ; 
 int /*<<< orphan*/  FH_MEM_RSSR_RX_STATUS_REG ; 
 int /*<<< orphan*/  FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE ; 
 scalar_t__ IWL_DEVICE_FAMILY_22560 ; 
 int /*<<< orphan*/  RFH_GEN_STATUS ; 
 int /*<<< orphan*/  RFH_GEN_STATUS_GEN3 ; 
 int /*<<< orphan*/  RFH_RXF_DMA_CFG ; 
 int /*<<< orphan*/  RFH_RXF_DMA_CFG_GEN3 ; 
 int /*<<< orphan*/  RXF_DMA_IDLE ; 
 int FUNC0 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct iwl_trans *trans)
{
	if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22560) {
		/* TODO: remove this for 22560 once fw does it */
		FUNC5(trans, RFH_RXF_DMA_CFG_GEN3, 0);
		return FUNC2(trans, RFH_GEN_STATUS_GEN3,
					      RXF_DMA_IDLE, RXF_DMA_IDLE, 1000);
	} else if (trans->trans_cfg->mq_rx_supported) {
		FUNC4(trans, RFH_RXF_DMA_CFG, 0);
		return FUNC1(trans, RFH_GEN_STATUS,
					   RXF_DMA_IDLE, RXF_DMA_IDLE, 1000);
	} else {
		FUNC3(trans, FH_MEM_RCSR_CHNL0_CONFIG_REG, 0);
		return FUNC0(trans, FH_MEM_RSSR_RX_STATUS_REG,
					   FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE,
					   1000);
	}
}