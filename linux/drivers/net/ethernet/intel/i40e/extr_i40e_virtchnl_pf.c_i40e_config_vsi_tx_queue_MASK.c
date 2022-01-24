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
typedef  int /*<<< orphan*/  u16 ;
struct virtchnl_txq_info {int dma_ring_addr; int /*<<< orphan*/  dma_headwb_addr; int /*<<< orphan*/  headwb_enabled; int /*<<< orphan*/  ring_len; int /*<<< orphan*/  vsi_id; } ;
struct TYPE_4__ {int /*<<< orphan*/ * qs_handle; } ;
struct i40e_vsi {TYPE_1__ info; } ;
struct i40e_vf {int vf_id; struct i40e_pf* pf; } ;
struct TYPE_6__ {int vf_base_id; } ;
struct i40e_hw {int pf_id; TYPE_3__ func_caps; } ;
struct i40e_pf {TYPE_2__* pdev; struct i40e_hw hw; } ;
struct i40e_hmc_obj_txq {int base; int /*<<< orphan*/  head_wb_addr; int /*<<< orphan*/  head_wb_ena; scalar_t__ rdylist_act; int /*<<< orphan*/  rdylist; int /*<<< orphan*/  qlen; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int I40E_QTX_CTL_PF_INDX_MASK ; 
 int I40E_QTX_CTL_PF_INDX_SHIFT ; 
 int I40E_QTX_CTL_VFVM_INDX_MASK ; 
 int I40E_QTX_CTL_VFVM_INDX_SHIFT ; 
 int I40E_QTX_CTL_VF_QUEUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 struct i40e_vsi* FUNC3 (struct i40e_pf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*) ; 
 int FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ,struct i40e_hmc_obj_txq*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_vf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i40e_hmc_obj_txq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct i40e_vf *vf, u16 vsi_id,
				    u16 vsi_queue_id,
				    struct virtchnl_txq_info *info)
{
	struct i40e_pf *pf = vf->pf;
	struct i40e_hw *hw = &pf->hw;
	struct i40e_hmc_obj_txq tx_ctx;
	struct i40e_vsi *vsi;
	u16 pf_queue_id;
	u32 qtx_ctl;
	int ret = 0;

	if (!FUNC7(vf, info->vsi_id)) {
		ret = -ENOENT;
		goto error_context;
	}
	pf_queue_id = FUNC6(vf, vsi_id, vsi_queue_id);
	vsi = FUNC3(pf, vsi_id);
	if (!vsi) {
		ret = -ENOENT;
		goto error_context;
	}

	/* clear the context structure first */
	FUNC9(&tx_ctx, 0, sizeof(struct i40e_hmc_obj_txq));

	/* only set the required fields */
	tx_ctx.base = info->dma_ring_addr / 128;
	tx_ctx.qlen = info->ring_len;
	tx_ctx.rdylist = FUNC8(vsi->info.qs_handle[0]);
	tx_ctx.rdylist_act = 0;
	tx_ctx.head_wb_ena = info->headwb_enabled;
	tx_ctx.head_wb_addr = info->dma_headwb_addr;

	/* clear the context in the HMC */
	ret = FUNC2(hw, pf_queue_id);
	if (ret) {
		FUNC1(&pf->pdev->dev,
			"Failed to clear VF LAN Tx queue context %d, error: %d\n",
			pf_queue_id, ret);
		ret = -ENOENT;
		goto error_context;
	}

	/* set the context in the HMC */
	ret = FUNC5(hw, pf_queue_id, &tx_ctx);
	if (ret) {
		FUNC1(&pf->pdev->dev,
			"Failed to set VF LAN Tx queue context %d error: %d\n",
			pf_queue_id, ret);
		ret = -ENOENT;
		goto error_context;
	}

	/* associate this queue with the PCI VF function */
	qtx_ctl = I40E_QTX_CTL_VF_QUEUE;
	qtx_ctl |= ((hw->pf_id << I40E_QTX_CTL_PF_INDX_SHIFT)
		    & I40E_QTX_CTL_PF_INDX_MASK);
	qtx_ctl |= (((vf->vf_id + hw->func_caps.vf_base_id)
		     << I40E_QTX_CTL_VFVM_INDX_SHIFT)
		    & I40E_QTX_CTL_VFVM_INDX_MASK);
	FUNC10(hw, FUNC0(pf_queue_id), qtx_ctl);
	FUNC4(hw);

error_context:
	return ret;
}