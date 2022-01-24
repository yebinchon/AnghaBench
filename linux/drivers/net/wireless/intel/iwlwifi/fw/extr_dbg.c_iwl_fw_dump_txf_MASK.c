#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct iwl_fwrt_shared_mem_cfg {int num_txfifo_entries; int num_lmacs; int* internal_txfifo_size; TYPE_1__* lmac; } ;
struct iwl_fw_runtime {int /*<<< orphan*/  trans; struct iwl_fwrt_shared_mem_cfg smem_cfg; TYPE_2__* fw; } ;
struct iwl_fw_error_dump_fifo {void* fence_mode; void* fence_ptr; void* rd_ptr; void* wr_ptr; void* available_bytes; void* fifo_num; scalar_t__ data; } ;
struct iwl_fw_error_dump_data {void* len; void* type; scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  ucode_capa; } ;
struct TYPE_3__ {int /*<<< orphan*/ * txfifo_size; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_fw_runtime*,char*) ; 
 int IWL_FW_ERROR_DUMP_INTERNAL_TXF ; 
 int IWL_FW_ERROR_DUMP_TXF ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG ; 
 scalar_t__ LMAC2_PRPH_OFFSET ; 
 int TXF_CPU2_FENCE_PTR ; 
 int TXF_CPU2_FIFO_ITEM_CNT ; 
 int TXF_CPU2_LOCK_FENCE ; 
 scalar_t__ TXF_CPU2_NUM ; 
 int TXF_CPU2_RD_PTR ; 
 scalar_t__ TXF_CPU2_READ_MODIFY_ADDR ; 
 int TXF_CPU2_READ_MODIFY_DATA ; 
 int TXF_CPU2_WR_PTR ; 
 scalar_t__ TXF_LARC_NUM ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct iwl_fw_runtime*,int) ; 
 struct iwl_fw_error_dump_data* FUNC5 (struct iwl_fw_error_dump_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_fw_runtime*,struct iwl_fw_error_dump_data**,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC11(struct iwl_fw_runtime *fwrt,
			    struct iwl_fw_error_dump_data **dump_data)
{
	struct iwl_fw_error_dump_fifo *fifo_hdr;
	struct iwl_fwrt_shared_mem_cfg *cfg = &fwrt->smem_cfg;
	u32 *fifo_data;
	u32 fifo_len;
	unsigned long flags;
	int i, j;

	FUNC1(fwrt, "WRT TX FIFO dump\n");

	if (!FUNC7(fwrt->trans, &flags))
		return;

	if (FUNC4(fwrt, IWL_FW_ERROR_DUMP_TXF)) {
		/* Pull TXF data from LMAC1 */
		for (i = 0; i < fwrt->smem_cfg.num_txfifo_entries; i++) {
			/* Mark the number of TXF we're pulling now */
			FUNC10(fwrt->trans, TXF_LARC_NUM, i);
			FUNC6(fwrt, dump_data,
					  cfg->lmac[0].txfifo_size[i], 0, i);
		}

		/* Pull TXF data from LMAC2 */
		if (fwrt->smem_cfg.num_lmacs > 1) {
			for (i = 0; i < fwrt->smem_cfg.num_txfifo_entries;
			     i++) {
				/* Mark the number of TXF we're pulling now */
				FUNC10(fwrt->trans,
						     TXF_LARC_NUM +
						     LMAC2_PRPH_OFFSET, i);
				FUNC6(fwrt, dump_data,
						  cfg->lmac[1].txfifo_size[i],
						  LMAC2_PRPH_OFFSET,
						  i + cfg->num_txfifo_entries);
			}
		}
	}

	if (FUNC4(fwrt, IWL_FW_ERROR_DUMP_INTERNAL_TXF) &&
	    FUNC3(&fwrt->fw->ucode_capa,
			IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG)) {
		/* Pull UMAC internal TXF data from all TXFs */
		for (i = 0;
		     i < FUNC0(fwrt->smem_cfg.internal_txfifo_size);
		     i++) {
			fifo_hdr = (void *)(*dump_data)->data;
			fifo_data = (void *)fifo_hdr->data;
			fifo_len = fwrt->smem_cfg.internal_txfifo_size[i];

			/* No need to try to read the data if the length is 0 */
			if (fifo_len == 0)
				continue;

			/* Add a TLV for the internal FIFOs */
			(*dump_data)->type =
				FUNC2(IWL_FW_ERROR_DUMP_INTERNAL_TXF);
			(*dump_data)->len =
				FUNC2(fifo_len + sizeof(*fifo_hdr));

			fifo_hdr->fifo_num = FUNC2(i);

			/* Mark the number of TXF we're pulling now */
			FUNC10(fwrt->trans, TXF_CPU2_NUM, i +
				fwrt->smem_cfg.num_txfifo_entries);

			fifo_hdr->available_bytes =
				FUNC2(FUNC8(fwrt->trans,
								TXF_CPU2_FIFO_ITEM_CNT));
			fifo_hdr->wr_ptr =
				FUNC2(FUNC8(fwrt->trans,
								TXF_CPU2_WR_PTR));
			fifo_hdr->rd_ptr =
				FUNC2(FUNC8(fwrt->trans,
								TXF_CPU2_RD_PTR));
			fifo_hdr->fence_ptr =
				FUNC2(FUNC8(fwrt->trans,
								TXF_CPU2_FENCE_PTR));
			fifo_hdr->fence_mode =
				FUNC2(FUNC8(fwrt->trans,
								TXF_CPU2_LOCK_FENCE));

			/* Set TXF_CPU2_READ_MODIFY_ADDR to TXF_CPU2_WR_PTR */
			FUNC10(fwrt->trans,
					     TXF_CPU2_READ_MODIFY_ADDR,
					     TXF_CPU2_WR_PTR);

			/* Dummy-read to advance the read pointer to head */
			FUNC8(fwrt->trans,
					    TXF_CPU2_READ_MODIFY_DATA);

			/* Read FIFO */
			fifo_len /= sizeof(u32); /* Size in DWORDS */
			for (j = 0; j < fifo_len; j++)
				fifo_data[j] =
					FUNC8(fwrt->trans,
							    TXF_CPU2_READ_MODIFY_DATA);
			*dump_data = FUNC5(*dump_data);
		}
	}

	FUNC9(fwrt->trans, &flags);
}