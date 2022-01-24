#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct iwl_trans_pcie {int rx_buf_size; size_t cmd_queue; int /*<<< orphan*/  ctxt_info_dma_addr; struct iwl_context_info* ctxt_info; TYPE_4__** txq; TYPE_3__* rxq; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct iwl_context_info_rbd_cfg {void* status_wr_ptr; void* used_rbd_addr; void* free_rbd_addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  cmd_queue_size; void* cmd_queue_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  control_flags; } ;
struct TYPE_6__ {void* size; void* mac_id; scalar_t__ version; } ;
struct iwl_context_info {int /*<<< orphan*/  dram; TYPE_5__ hcmd_cfg; struct iwl_context_info_rbd_cfg rbd_cfg; TYPE_2__ control; TYPE_1__ version; } ;
struct fw_img {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  dma_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  rb_stts_dma; int /*<<< orphan*/  used_bd_dma; int /*<<< orphan*/  bd_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CSR_CTXT_INFO_BA ; 
 int /*<<< orphan*/  CSR_HW_REV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  IWL_AMSDU_12K 131 
#define  IWL_AMSDU_2K 130 
#define  IWL_AMSDU_4K 129 
#define  IWL_AMSDU_8K 128 
 int /*<<< orphan*/  IWL_CMD_QUEUE_SIZE ; 
 int IWL_CTXT_INFO_RB_CB_SIZE_POS ; 
 int IWL_CTXT_INFO_RB_SIZE_12K ; 
 int IWL_CTXT_INFO_RB_SIZE_2K ; 
 int IWL_CTXT_INFO_RB_SIZE_4K ; 
 int IWL_CTXT_INFO_RB_SIZE_8K ; 
 int IWL_CTXT_INFO_RB_SIZE_POS ; 
 int IWL_CTXT_INFO_TFD_FORMAT_LONG ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  MQ_RX_TABLE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UREG_CPU_INIT_RUN ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 struct iwl_context_info* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,struct iwl_context_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_trans*) ; 
 scalar_t__ FUNC12 (struct iwl_trans*) ; 
 int FUNC13 (struct iwl_trans*,struct fw_img const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 

int FUNC17(struct iwl_trans *trans,
			    const struct fw_img *fw)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	struct iwl_context_info *ctxt_info;
	struct iwl_context_info_rbd_cfg *rx_cfg;
	u32 control_flags = 0, rb_size;
	int ret;

	ctxt_info = FUNC8(trans->dev, sizeof(*ctxt_info),
				       &trans_pcie->ctxt_info_dma_addr,
				       GFP_KERNEL);
	if (!ctxt_info)
		return -ENOMEM;

	ctxt_info->version.version = 0;
	ctxt_info->version.mac_id =
		FUNC5((u16)FUNC14(trans, CSR_HW_REV));
	/* size is in DWs */
	ctxt_info->version.size = FUNC5(sizeof(*ctxt_info) / 4);

	switch (trans_pcie->rx_buf_size) {
	case IWL_AMSDU_2K:
		rb_size = IWL_CTXT_INFO_RB_SIZE_2K;
		break;
	case IWL_AMSDU_4K:
		rb_size = IWL_CTXT_INFO_RB_SIZE_4K;
		break;
	case IWL_AMSDU_8K:
		rb_size = IWL_CTXT_INFO_RB_SIZE_8K;
		break;
	case IWL_AMSDU_12K:
		rb_size = IWL_CTXT_INFO_RB_SIZE_12K;
		break;
	default:
		FUNC4(1);
		rb_size = IWL_CTXT_INFO_RB_SIZE_4K;
	}

	FUNC0(FUNC2(MQ_RX_TABLE_SIZE) > 0xF);
	control_flags = IWL_CTXT_INFO_TFD_FORMAT_LONG |
			(FUNC2(MQ_RX_TABLE_SIZE) <<
			 IWL_CTXT_INFO_RB_CB_SIZE_POS) |
			(rb_size << IWL_CTXT_INFO_RB_SIZE_POS);
	ctxt_info->control.control_flags = FUNC6(control_flags);

	/* initialize RX default queue */
	rx_cfg = &ctxt_info->rbd_cfg;
	rx_cfg->free_rbd_addr = FUNC7(trans_pcie->rxq->bd_dma);
	rx_cfg->used_rbd_addr = FUNC7(trans_pcie->rxq->used_bd_dma);
	rx_cfg->status_wr_ptr = FUNC7(trans_pcie->rxq->rb_stts_dma);

	/* initialize TX command queue */
	ctxt_info->hcmd_cfg.cmd_queue_addr =
		FUNC7(trans_pcie->txq[trans_pcie->cmd_queue]->dma_addr);
	ctxt_info->hcmd_cfg.cmd_queue_size =
		FUNC3(IWL_CMD_QUEUE_SIZE);

	/* allocate ucode sections in dram and set addresses */
	ret = FUNC13(trans, fw, &ctxt_info->dram);
	if (ret) {
		FUNC9(trans->dev, sizeof(*trans_pcie->ctxt_info),
				  ctxt_info, trans_pcie->ctxt_info_dma_addr);
		return ret;
	}

	trans_pcie->ctxt_info = ctxt_info;

	FUNC10(trans);

	/* Configure debug, if exists */
	if (FUNC12(trans))
		FUNC11(trans);

	/* kick FW self load */
	FUNC15(trans, CSR_CTXT_INFO_BA, trans_pcie->ctxt_info_dma_addr);
	FUNC16(trans, UREG_CPU_INIT_RUN, 1);

	/* Context info will be released upon alive or failure to get one */

	return 0;
}