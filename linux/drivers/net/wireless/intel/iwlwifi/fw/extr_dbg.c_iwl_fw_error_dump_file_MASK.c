#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int u32 ;
struct iwl_fwrt_shared_mem_cfg {int num_lmacs; int num_txfifo_entries; int rxfifo2_size; int internal_txfifo_addr; int* internal_txfifo_size; TYPE_6__* lmac; } ;
struct TYPE_14__ {int* lmac_err_id; int umac_err_id; int /*<<< orphan*/ * d3_debug_data; scalar_t__ monitor_only; TYPE_7__* desc; } ;
struct iwl_fw_runtime {size_t cur_fw_img; int num_of_paging_blk; TYPE_12__* trans; TYPE_11__ dump; TYPE_9__* fw; struct iwl_fwrt_shared_mem_cfg smem_cfg; TYPE_4__* dev; } ;
struct iwl_fw_error_dump_trigger_desc {int dummy; } ;
struct iwl_fw_error_dump_smem_cfg {void** internal_txfifo_size; void* internal_txfifo_addr; void* rxfifo2_size; TYPE_5__* lmac; void* num_txfifo_entries; void* num_lmacs; } ;
struct iwl_fw_error_dump_paging {int dummy; } ;
struct iwl_fw_error_dump_mem {int dummy; } ;
struct iwl_fw_error_dump_info {int num_of_lmacs; void* umac_err_id; void** lmac_err_id; int /*<<< orphan*/  bus_human_readable; int /*<<< orphan*/  dev_human_readable; struct iwl_fw_error_dump_trigger_desc* fw_human_readable; void* hw_step; void* hw_type; } ;
struct iwl_fw_error_dump_file {void* file_len; scalar_t__ data; void* barker; } ;
struct iwl_fw_error_dump_data {struct iwl_fw_error_dump_trigger_desc* data; void* len; void* type; } ;
struct iwl_fw_dump_ptrs {struct iwl_fw_error_dump_file* fwrt_ptr; } ;
struct iwl_fw_dbg_mem_seg_tlv {int /*<<< orphan*/  data_type; int /*<<< orphan*/  ofs; int /*<<< orphan*/  len; } ;
struct fw_img {TYPE_1__* sec; } ;
struct TYPE_23__ {int n_mem_tlv; struct iwl_fw_dbg_mem_seg_tlv* mem_tlv; } ;
struct TYPE_24__ {TYPE_8__ dbg; int /*<<< orphan*/ * human_readable; struct fw_img* img; } ;
struct TYPE_22__ {int len; int /*<<< orphan*/  trig_desc; } ;
struct TYPE_21__ {int* txfifo_size; int rxfifo1_size; } ;
struct TYPE_20__ {void* rxfifo1_size; void** txfifo_size; } ;
struct TYPE_19__ {TYPE_3__* bus; } ;
struct TYPE_18__ {int /*<<< orphan*/  name; } ;
struct TYPE_17__ {scalar_t__ device_family; } ;
struct TYPE_16__ {int offset; int len; } ;
struct TYPE_15__ {TYPE_10__* cfg; int /*<<< orphan*/  hw_rev; TYPE_2__* trans_cfg; int /*<<< orphan*/  status; } ;
struct TYPE_13__ {int smem_len; int dccm2_len; int dccm_offset; int dccm_len; int d3_debug_data_length; int smem_offset; int dccm2_offset; int d3_debug_data_base_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IWL_DEVICE_FAMILY_7000 ; 
 int IWL_FW_ERROR_DUMP_BARKER ; 
 int IWL_FW_ERROR_DUMP_D3_DEBUG_DATA ; 
 int IWL_FW_ERROR_DUMP_DEV_FW_INFO ; 
 int IWL_FW_ERROR_DUMP_ERROR_INFO ; 
 int IWL_FW_ERROR_DUMP_MEM ; 
 int IWL_FW_ERROR_DUMP_MEM_CFG ; 
 int IWL_FW_ERROR_DUMP_MEM_SMEM ; 
 int IWL_FW_ERROR_DUMP_MEM_SRAM ; 
 int IWL_FW_ERROR_DUMP_PRPH ; 
 int IWL_FW_ERROR_DUMP_RADIO_REG ; 
 size_t IWL_UCODE_SECTION_DATA ; 
 size_t IWL_UCODE_TYPE_MAX ; 
 int MAX_NUM_LMAC ; 
 int PAGING_BLOCK_SIZE ; 
 int RADIO_REG_MAX_READ ; 
 int /*<<< orphan*/  STATUS_FW_ERROR ; 
 int TX_FIFO_INTERNAL_MAX_NUM ; 
 int TX_FIFO_MAX_NUM ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_fw_runtime*,struct iwl_fw_error_dump_data**) ; 
 int /*<<< orphan*/  iwl_dump_prph ; 
 scalar_t__ FUNC5 (struct iwl_fw_runtime*) ; 
 scalar_t__ FUNC6 (struct iwl_fw_runtime*) ; 
 scalar_t__ FUNC7 (struct iwl_fw_runtime*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_fw_runtime*,struct iwl_fw_error_dump_data**,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_fw_runtime*,struct iwl_fw_error_dump_data**) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_fw_runtime*,struct iwl_fw_error_dump_data**) ; 
 struct iwl_fw_error_dump_data* FUNC11 (struct iwl_fw_error_dump_data*) ; 
 int /*<<< orphan*/  iwl_fw_get_prph_len ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_fw_runtime*,...) ; 
 int FUNC13 (struct iwl_fw_runtime*,struct iwl_fwrt_shared_mem_cfg*) ; 
 int FUNC14 (struct iwl_fw_runtime*,struct iwl_fwrt_shared_mem_cfg*) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_fw_runtime*,struct iwl_fw_error_dump_data**) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_12__*,int,struct iwl_fw_error_dump_trigger_desc*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct iwl_fw_error_dump_trigger_desc*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iwl_fw_error_dump_file* FUNC22 (int) ; 

__attribute__((used)) static struct iwl_fw_error_dump_file *
FUNC23(struct iwl_fw_runtime *fwrt,
		       struct iwl_fw_dump_ptrs *fw_error_dump)
{
	struct iwl_fw_error_dump_file *dump_file;
	struct iwl_fw_error_dump_data *dump_data;
	struct iwl_fw_error_dump_info *dump_info;
	struct iwl_fw_error_dump_smem_cfg *dump_smem_cfg;
	struct iwl_fw_error_dump_trigger_desc *dump_trig;
	u32 sram_len, sram_ofs;
	const struct iwl_fw_dbg_mem_seg_tlv *fw_mem = fwrt->fw->dbg.mem_tlv;
	struct iwl_fwrt_shared_mem_cfg *mem_cfg = &fwrt->smem_cfg;
	u32 file_len, fifo_len = 0, prph_len = 0, radio_len = 0;
	u32 smem_len = fwrt->fw->dbg.n_mem_tlv ? 0 : fwrt->trans->cfg->smem_len;
	u32 sram2_len = fwrt->fw->dbg.n_mem_tlv ?
				0 : fwrt->trans->cfg->dccm2_len;
	int i;

	/* SRAM - include stack CCM if driver knows the values for it */
	if (!fwrt->trans->cfg->dccm_offset || !fwrt->trans->cfg->dccm_len) {
		const struct fw_img *img;

		if (fwrt->cur_fw_img >= IWL_UCODE_TYPE_MAX)
			return NULL;
		img = &fwrt->fw->img[fwrt->cur_fw_img];
		sram_ofs = img->sec[IWL_UCODE_SECTION_DATA].offset;
		sram_len = img->sec[IWL_UCODE_SECTION_DATA].len;
	} else {
		sram_ofs = fwrt->trans->cfg->dccm_offset;
		sram_len = fwrt->trans->cfg->dccm_len;
	}

	/* reading RXF/TXF sizes */
	if (FUNC21(STATUS_FW_ERROR, &fwrt->trans->status)) {
		fifo_len = FUNC13(fwrt, mem_cfg);
		fifo_len += FUNC14(fwrt, mem_cfg);

		/* Make room for PRPH registers */
		if (FUNC7(fwrt, IWL_FW_ERROR_DUMP_PRPH))
			FUNC12(fwrt, &prph_len,
					    iwl_fw_get_prph_len);

		if (fwrt->trans->trans_cfg->device_family ==
		    IWL_DEVICE_FAMILY_7000 &&
		    FUNC7(fwrt, IWL_FW_ERROR_DUMP_RADIO_REG))
			radio_len = sizeof(*dump_data) + RADIO_REG_MAX_READ;
	}

	file_len = sizeof(*dump_file) + fifo_len + prph_len + radio_len;

	if (FUNC7(fwrt, IWL_FW_ERROR_DUMP_DEV_FW_INFO))
		file_len += sizeof(*dump_data) + sizeof(*dump_info);
	if (FUNC7(fwrt, IWL_FW_ERROR_DUMP_MEM_CFG))
		file_len += sizeof(*dump_data) + sizeof(*dump_smem_cfg);

	if (FUNC7(fwrt, IWL_FW_ERROR_DUMP_MEM)) {
		size_t hdr_len = sizeof(*dump_data) +
				 sizeof(struct iwl_fw_error_dump_mem);

		/* Dump SRAM only if no mem_tlvs */
		if (!fwrt->fw->dbg.n_mem_tlv)
			FUNC0(file_len, sram_len, hdr_len);

		/* Make room for all mem types that exist */
		FUNC0(file_len, smem_len, hdr_len);
		FUNC0(file_len, sram2_len, hdr_len);

		for (i = 0; i < fwrt->fw->dbg.n_mem_tlv; i++)
			FUNC0(file_len, FUNC18(fw_mem[i].len), hdr_len);
	}

	/* Make room for fw's virtual image pages, if it exists */
	if (FUNC6(fwrt))
		file_len += fwrt->num_of_paging_blk *
			(sizeof(*dump_data) +
			 sizeof(struct iwl_fw_error_dump_paging) +
			 PAGING_BLOCK_SIZE);

	if (FUNC5(fwrt) && fwrt->dump.d3_debug_data) {
		file_len += sizeof(*dump_data) +
			fwrt->trans->cfg->d3_debug_data_length * 2;
	}

	/* If we only want a monitor dump, reset the file length */
	if (fwrt->dump.monitor_only) {
		file_len = sizeof(*dump_file) + sizeof(*dump_data) * 2 +
			   sizeof(*dump_info) + sizeof(*dump_smem_cfg);
	}

	if (FUNC7(fwrt, IWL_FW_ERROR_DUMP_ERROR_INFO) &&
	    fwrt->dump.desc)
		file_len += sizeof(*dump_data) + sizeof(*dump_trig) +
			    fwrt->dump.desc->len;

	dump_file = FUNC22(file_len);
	if (!dump_file)
		return NULL;

	fw_error_dump->fwrt_ptr = dump_file;

	dump_file->barker = FUNC3(IWL_FW_ERROR_DUMP_BARKER);
	dump_data = (void *)dump_file->data;

	if (FUNC7(fwrt, IWL_FW_ERROR_DUMP_DEV_FW_INFO)) {
		dump_data->type = FUNC3(IWL_FW_ERROR_DUMP_DEV_FW_INFO);
		dump_data->len = FUNC3(sizeof(*dump_info));
		dump_info = (void *)dump_data->data;
		dump_info->hw_type =
			FUNC3(FUNC2(fwrt->trans->hw_rev));
		dump_info->hw_step =
			FUNC3(FUNC1(fwrt->trans->hw_rev));
		FUNC19(dump_info->fw_human_readable, fwrt->fw->human_readable,
		       sizeof(dump_info->fw_human_readable));
		FUNC20(dump_info->dev_human_readable, fwrt->trans->cfg->name,
			sizeof(dump_info->dev_human_readable) - 1);
		FUNC20(dump_info->bus_human_readable, fwrt->dev->bus->name,
			sizeof(dump_info->bus_human_readable) - 1);
		dump_info->num_of_lmacs = fwrt->smem_cfg.num_lmacs;
		dump_info->lmac_err_id[0] =
			FUNC3(fwrt->dump.lmac_err_id[0]);
		if (fwrt->smem_cfg.num_lmacs > 1)
			dump_info->lmac_err_id[1] =
				FUNC3(fwrt->dump.lmac_err_id[1]);
		dump_info->umac_err_id = FUNC3(fwrt->dump.umac_err_id);

		dump_data = FUNC11(dump_data);
	}

	if (FUNC7(fwrt, IWL_FW_ERROR_DUMP_MEM_CFG)) {
		/* Dump shared memory configuration */
		dump_data->type = FUNC3(IWL_FW_ERROR_DUMP_MEM_CFG);
		dump_data->len = FUNC3(sizeof(*dump_smem_cfg));
		dump_smem_cfg = (void *)dump_data->data;
		dump_smem_cfg->num_lmacs = FUNC3(mem_cfg->num_lmacs);
		dump_smem_cfg->num_txfifo_entries =
			FUNC3(mem_cfg->num_txfifo_entries);
		for (i = 0; i < MAX_NUM_LMAC; i++) {
			int j;
			u32 *txf_size = mem_cfg->lmac[i].txfifo_size;

			for (j = 0; j < TX_FIFO_MAX_NUM; j++)
				dump_smem_cfg->lmac[i].txfifo_size[j] =
					FUNC3(txf_size[j]);
			dump_smem_cfg->lmac[i].rxfifo1_size =
				FUNC3(mem_cfg->lmac[i].rxfifo1_size);
		}
		dump_smem_cfg->rxfifo2_size =
			FUNC3(mem_cfg->rxfifo2_size);
		dump_smem_cfg->internal_txfifo_addr =
			FUNC3(mem_cfg->internal_txfifo_addr);
		for (i = 0; i < TX_FIFO_INTERNAL_MAX_NUM; i++) {
			dump_smem_cfg->internal_txfifo_size[i] =
				FUNC3(mem_cfg->internal_txfifo_size[i]);
		}

		dump_data = FUNC11(dump_data);
	}

	/* We only dump the FIFOs if the FW is in error state */
	if (fifo_len) {
		FUNC9(fwrt, &dump_data);
		FUNC10(fwrt, &dump_data);
	}

	if (radio_len)
		FUNC15(fwrt, &dump_data);

	if (FUNC7(fwrt, IWL_FW_ERROR_DUMP_ERROR_INFO) &&
	    fwrt->dump.desc) {
		dump_data->type = FUNC3(IWL_FW_ERROR_DUMP_ERROR_INFO);
		dump_data->len = FUNC3(sizeof(*dump_trig) +
					     fwrt->dump.desc->len);
		dump_trig = (void *)dump_data->data;
		FUNC19(dump_trig, &fwrt->dump.desc->trig_desc,
		       sizeof(*dump_trig) + fwrt->dump.desc->len);

		dump_data = FUNC11(dump_data);
	}

	/* In case we only want monitor dump, skip to dump trasport data */
	if (fwrt->dump.monitor_only)
		goto out;

	if (FUNC7(fwrt, IWL_FW_ERROR_DUMP_MEM)) {
		const struct iwl_fw_dbg_mem_seg_tlv *fw_dbg_mem =
			fwrt->fw->dbg.mem_tlv;

		if (!fwrt->fw->dbg.n_mem_tlv)
			FUNC8(fwrt, &dump_data, sram_len, sram_ofs,
					IWL_FW_ERROR_DUMP_MEM_SRAM);

		for (i = 0; i < fwrt->fw->dbg.n_mem_tlv; i++) {
			u32 len = FUNC18(fw_dbg_mem[i].len);
			u32 ofs = FUNC18(fw_dbg_mem[i].ofs);

			FUNC8(fwrt, &dump_data, len, ofs,
					FUNC18(fw_dbg_mem[i].data_type));
		}

		FUNC8(fwrt, &dump_data, smem_len,
				fwrt->trans->cfg->smem_offset,
				IWL_FW_ERROR_DUMP_MEM_SMEM);

		FUNC8(fwrt, &dump_data, sram2_len,
				fwrt->trans->cfg->dccm2_offset,
				IWL_FW_ERROR_DUMP_MEM_SRAM);
	}

	if (FUNC5(fwrt) && fwrt->dump.d3_debug_data) {
		u32 addr = fwrt->trans->cfg->d3_debug_data_base_addr;
		size_t data_size = fwrt->trans->cfg->d3_debug_data_length;

		dump_data->type = FUNC3(IWL_FW_ERROR_DUMP_D3_DEBUG_DATA);
		dump_data->len = FUNC3(data_size * 2);

		FUNC19(dump_data->data, fwrt->dump.d3_debug_data, data_size);

		FUNC17(fwrt->dump.d3_debug_data);
		fwrt->dump.d3_debug_data = NULL;

		FUNC16(fwrt->trans, addr,
					 dump_data->data + data_size,
					 data_size);

		dump_data = FUNC11(dump_data);
	}

	/* Dump fw's virtual image */
	if (FUNC6(fwrt))
		FUNC4(fwrt, &dump_data);

	if (prph_len)
		FUNC12(fwrt, &dump_data, iwl_dump_prph);

out:
	dump_file->file_len = FUNC3(file_len);
	return dump_file;
}