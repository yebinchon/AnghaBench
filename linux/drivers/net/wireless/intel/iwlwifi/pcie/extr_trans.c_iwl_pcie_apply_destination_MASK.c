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
struct TYPE_8__ {int n_dest_reg; TYPE_3__* fw_mon; int /*<<< orphan*/  num_blocks; struct iwl_fw_dbg_dest_tlv_v1* dest_tlv; } ;
struct iwl_trans {TYPE_4__ dbg; TYPE_2__* trans_cfg; } ;
struct iwl_fw_dbg_dest_tlv_v1 {scalar_t__ monitor_mode; int base_shift; int end_shift; int /*<<< orphan*/  end_reg; int /*<<< orphan*/  base_reg; TYPE_1__* reg_ops; int /*<<< orphan*/  size_power; } ;
struct TYPE_7__ {int physical; int size; } ;
struct TYPE_6__ {scalar_t__ device_family; } ;
struct TYPE_5__ {int op; int /*<<< orphan*/  val; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
#define  CSR_ASSIGN 134 
#define  CSR_CLEARBIT 133 
#define  CSR_SETBIT 132 
 scalar_t__ EXTERNAL_MODE ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*) ; 
 scalar_t__ IWL_DEVICE_FAMILY_8000 ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,char*) ; 
 int /*<<< orphan*/  MON_BUFF_BASE_ADDR_VER2 ; 
 int /*<<< orphan*/  MON_BUFF_END_ADDR_VER2 ; 
 int MON_BUFF_SHIFT_VER2 ; 
#define  PRPH_ASSIGN 131 
#define  PRPH_BLOCKBIT 130 
#define  PRPH_CLEARBIT 129 
#define  PRPH_SETBIT 128 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_trans*,int,int) ; 
 scalar_t__ FUNC12 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_trans*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_trans*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 

void FUNC17(struct iwl_trans *trans)
{
	const struct iwl_fw_dbg_dest_tlv_v1 *dest = trans->dbg.dest_tlv;
	int i;

	if (FUNC12(trans)) {
		if (!trans->dbg.num_blocks)
			return;

		FUNC1(trans,
			     "WRT: Applying DRAM buffer[0] destination\n");
		FUNC15(trans, MON_BUFF_BASE_ADDR_VER2,
				    trans->dbg.fw_mon[0].physical >>
				    MON_BUFF_SHIFT_VER2);
		FUNC15(trans, MON_BUFF_END_ADDR_VER2,
				    (trans->dbg.fw_mon[0].physical +
				     trans->dbg.fw_mon[0].size - 256) >>
				    MON_BUFF_SHIFT_VER2);
		return;
	}

	FUNC3(trans, "Applying debug destination %s\n",
		 FUNC5(dest->monitor_mode));

	if (dest->monitor_mode == EXTERNAL_MODE)
		FUNC8(trans, dest->size_power);
	else
		FUNC4(trans, "PCI should have external buffer debug\n");

	for (i = 0; i < trans->dbg.n_dest_reg; i++) {
		u32 addr = FUNC16(dest->reg_ops[i].addr);
		u32 val = FUNC16(dest->reg_ops[i].val);

		switch (dest->reg_ops[i].op) {
		case CSR_ASSIGN:
			FUNC13(trans, addr, val);
			break;
		case CSR_SETBIT:
			FUNC10(trans, addr, FUNC0(val));
			break;
		case CSR_CLEARBIT:
			FUNC6(trans, addr, FUNC0(val));
			break;
		case PRPH_ASSIGN:
			FUNC14(trans, addr, val);
			break;
		case PRPH_SETBIT:
			FUNC11(trans, addr, FUNC0(val));
			break;
		case PRPH_CLEARBIT:
			FUNC7(trans, addr, FUNC0(val));
			break;
		case PRPH_BLOCKBIT:
			if (FUNC9(trans, addr) & FUNC0(val)) {
				FUNC2(trans,
					"BIT(%u) in address 0x%x is 1, stopping FW configuration\n",
					val, addr);
				goto monitor;
			}
			break;
		default:
			FUNC2(trans, "FW debug - unknown OP %d\n",
				dest->reg_ops[i].op);
			break;
		}
	}

monitor:
	if (dest->monitor_mode == EXTERNAL_MODE && trans->dbg.fw_mon[0].size) {
		FUNC14(trans, FUNC16(dest->base_reg),
			       trans->dbg.fw_mon[0].physical >>
			       dest->base_shift);
		if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_8000)
			FUNC14(trans, FUNC16(dest->end_reg),
				       (trans->dbg.fw_mon[0].physical +
					trans->dbg.fw_mon[0].size - 256) >>
						dest->end_shift);
		else
			FUNC14(trans, FUNC16(dest->end_reg),
				       (trans->dbg.fw_mon[0].physical +
					trans->dbg.fw_mon[0].size) >>
						dest->end_shift);
	}
}