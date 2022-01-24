#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int dma; } ;
struct iwl_trans_pcie {scalar_t__ scd_base_addr; int /*<<< orphan*/  cmd_q_wdg_timeout; int /*<<< orphan*/  cmd_fifo; int /*<<< orphan*/  cmd_queue; TYPE_1__ scd_bc_tbls; int /*<<< orphan*/  queue_used; int /*<<< orphan*/  queue_stopped; } ;
struct iwl_trans {TYPE_3__* trans_cfg; } ;
struct TYPE_6__ {scalar_t__ device_family; TYPE_2__* base_params; } ;
struct TYPE_5__ {int num_of_queues; scalar_t__ scd_chain_ext_wa; } ;

/* Variables and functions */
 int /*<<< orphan*/  APMG_PCIDEV_STT_REG ; 
 int /*<<< orphan*/  APMG_PCIDEV_STT_VAL_L1_ACT_DIS ; 
 int FH_TCSR_CHNL_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE ; 
 scalar_t__ FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE ; 
 int /*<<< orphan*/  FH_TX_CHICKEN_BITS_REG ; 
 scalar_t__ FH_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN ; 
 scalar_t__ IWL_DEVICE_FAMILY_8000 ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  SCD_CHAINEXT_EN ; 
 int SCD_CONTEXT_MEM_LOWER_BOUND ; 
 int /*<<< orphan*/  SCD_DRAM_BASE_ADDR ; 
 int /*<<< orphan*/  SCD_SRAM_BASE_ADDR ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC13(struct iwl_trans *trans, u32 scd_base_addr)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	int nq = trans->trans_cfg->base_params->num_of_queues;
	int chan;
	u32 reg_val;
	int clear_dwords = (FUNC2(nq) -
				SCD_CONTEXT_MEM_LOWER_BOUND) / sizeof(u32);

	/* make sure all queue are not stopped/used */
	FUNC12(trans_pcie->queue_stopped, 0, sizeof(trans_pcie->queue_stopped));
	FUNC12(trans_pcie->queue_used, 0, sizeof(trans_pcie->queue_used));

	trans_pcie->scd_base_addr =
		FUNC6(trans, SCD_SRAM_BASE_ADDR);

	FUNC3(scd_base_addr != 0 &&
		scd_base_addr != trans_pcie->scd_base_addr);

	/* reset context data, TX status and translation data */
	FUNC9(trans, trans_pcie->scd_base_addr +
				   SCD_CONTEXT_MEM_LOWER_BOUND,
			    NULL, clear_dwords);

	FUNC11(trans, SCD_DRAM_BASE_ADDR,
		       trans_pcie->scd_bc_tbls.dma >> 10);

	/* The chain extension of the SCD doesn't work well. This feature is
	 * enabled by default by the HW, so we need to disable it manually.
	 */
	if (trans->trans_cfg->base_params->scd_chain_ext_wa)
		FUNC11(trans, SCD_CHAINEXT_EN, 0);

	FUNC8(trans, trans_pcie->cmd_queue,
				trans_pcie->cmd_fifo,
				trans_pcie->cmd_q_wdg_timeout);

	/* Activate all Tx DMA/FIFO channels */
	FUNC7(trans);

	/* Enable DMA channel */
	for (chan = 0; chan < FH_TCSR_CHNL_NUM; chan++)
		FUNC10(trans, FUNC0(chan),
				   FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE |
				   FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE);

	/* Update FH chicken bits */
	reg_val = FUNC5(trans, FH_TX_CHICKEN_BITS_REG);
	FUNC10(trans, FH_TX_CHICKEN_BITS_REG,
			   reg_val | FH_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN);

	/* Enable L1-Active */
	if (trans->trans_cfg->device_family < IWL_DEVICE_FAMILY_8000)
		FUNC4(trans, APMG_PCIDEV_STT_REG,
				    APMG_PCIDEV_STT_VAL_L1_ACT_DIS);
}