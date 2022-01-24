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
typedef  int u32 ;
struct iwl_trans {TYPE_3__* trans_cfg; int /*<<< orphan*/  status; } ;
struct iwl_rxq {int need_update; int write_actual; int id; int /*<<< orphan*/  write; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {scalar_t__ device_family; scalar_t__ mq_rx_supported; TYPE_2__* csr; TYPE_1__* base_params; } ;
struct TYPE_5__ {int /*<<< orphan*/  flag_mac_access_req; } ;
struct TYPE_4__ {int /*<<< orphan*/  shadow_reg_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1 ; 
 int CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP ; 
 int /*<<< orphan*/  FH_RSCSR_CHNL0_WPTR ; 
 int FIRST_RX_QUEUE ; 
 int /*<<< orphan*/  HBUS_TARG_WRPTR ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int) ; 
 scalar_t__ IWL_DEVICE_FAMILY_22560 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  STATUS_TPOWER_PMI ; 
 int FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct iwl_trans *trans,
				    struct iwl_rxq *rxq)
{
	u32 reg;

	FUNC6(&rxq->lock);

	/*
	 * explicitly wake up the NIC if:
	 * 1. shadow registers aren't enabled
	 * 2. there is a chance that the NIC is asleep
	 */
	if (!trans->trans_cfg->base_params->shadow_reg_enable &&
	    FUNC8(STATUS_TPOWER_PMI, &trans->status)) {
		reg = FUNC3(trans, CSR_UCODE_DRV_GP1);

		if (reg & CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP) {
			FUNC1(trans, "Rx queue requesting wakeup, GP1 = 0x%x\n",
				       reg);
			FUNC4(trans, CSR_GP_CNTRL,
				    FUNC0(trans->trans_cfg->csr->flag_mac_access_req));
			rxq->need_update = true;
			return;
		}
	}

	rxq->write_actual = FUNC7(rxq->write, 8);
	if (trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_22560)
		FUNC5(trans, HBUS_TARG_WRPTR,
			    (rxq->write_actual |
			     ((FIRST_RX_QUEUE + rxq->id) << 16)));
	else if (trans->trans_cfg->mq_rx_supported)
		FUNC5(trans, FUNC2(rxq->id),
			    rxq->write_actual);
	else
		FUNC5(trans, FH_RSCSR_CHNL0_WPTR, rxq->write_actual);
}