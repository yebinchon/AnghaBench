#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct iwl_txf_iter_data {int internal_txf; int fifo; int lmac; scalar_t__ fifo_size; } ;
struct iwl_fwrt_shared_mem_cfg {int num_txfifo_entries; int num_lmacs; scalar_t__* internal_txfifo_size; TYPE_3__* lmac; } ;
struct TYPE_5__ {struct iwl_txf_iter_data txf_iter_data; } ;
struct iwl_fw_runtime {TYPE_4__* fw; struct iwl_fwrt_shared_mem_cfg smem_cfg; TYPE_1__ dump; } ;
struct TYPE_6__ {int /*<<< orphan*/  fid1; } ;
struct iwl_fw_ini_region_cfg {int /*<<< orphan*/  offset; TYPE_2__ fifos; } ;
struct TYPE_8__ {int /*<<< orphan*/  ucode_capa; } ;
struct TYPE_7__ {scalar_t__* txfifo_size; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int FUNC1 (size_t) ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct iwl_fw_runtime *fwrt,
			     struct iwl_fw_ini_region_cfg *reg, int idx)
{
	struct iwl_txf_iter_data *iter = &fwrt->dump.txf_iter_data;
	struct iwl_fwrt_shared_mem_cfg *cfg = &fwrt->smem_cfg;
	int txf_num = cfg->num_txfifo_entries;
	int int_txf_num = FUNC0(cfg->internal_txfifo_size);
	u32 lmac_bitmap = FUNC4(reg->fifos.fid1);

	if (!idx) {
		if (FUNC4(reg->offset) &&
		    FUNC2(cfg->num_lmacs == 1,
			      "Invalid lmac offset: 0x%x\n",
			      FUNC4(reg->offset)))
			return false;

		iter->internal_txf = 0;
		iter->fifo_size = 0;
		iter->fifo = -1;
		if (FUNC4(reg->offset))
			iter->lmac = 1;
		else
			iter->lmac = 0;
	}

	if (!iter->internal_txf)
		for (iter->fifo++; iter->fifo < txf_num; iter->fifo++) {
			iter->fifo_size =
				cfg->lmac[iter->lmac].txfifo_size[iter->fifo];
			if (iter->fifo_size && (lmac_bitmap & FUNC1(iter->fifo)))
				return true;
		}

	iter->internal_txf = 1;

	if (!FUNC3(&fwrt->fw->ucode_capa,
			 IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG))
		return false;

	for (iter->fifo++; iter->fifo < int_txf_num + txf_num; iter->fifo++) {
		iter->fifo_size =
			cfg->internal_txfifo_size[iter->fifo - txf_num];
		if (iter->fifo_size && (lmac_bitmap & FUNC1(iter->fifo)))
			return true;
	}

	return false;
}