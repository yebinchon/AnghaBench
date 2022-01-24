#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct nand_operation {size_t ninstrs; struct nand_op_instr* instrs; int /*<<< orphan*/  cs; } ;
struct TYPE_11__ {int /*<<< orphan*/  timeout_ms; } ;
struct TYPE_10__ {int /*<<< orphan*/  len; } ;
struct TYPE_9__ {int naddrs; int* addrs; } ;
struct TYPE_7__ {int opcode; } ;
struct TYPE_12__ {TYPE_5__ waitrdy; TYPE_4__ data; TYPE_3__ addr; TYPE_1__ cmd; } ;
struct nand_op_instr {int type; int /*<<< orphan*/  delay_ns; TYPE_6__ ctx; } ;
struct nand_chip {int dummy; } ;
struct meson_nfc_nand_chip {int level1_divider; } ;
struct TYPE_8__ {size_t chip_select; } ;
struct meson_nfc {scalar_t__ reg_base; TYPE_2__ param; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
#define  NAND_OP_ADDR_INSTR 132 
#define  NAND_OP_CMD_INSTR 131 
#define  NAND_OP_DATA_IN_INSTR 130 
#define  NAND_OP_DATA_OUT_INSTR 129 
#define  NAND_OP_WAITRDY_INSTR 128 
 int NFC_CLK_CYCLE ; 
 size_t NFC_CMD_ALE ; 
 size_t NFC_CMD_CLE ; 
 scalar_t__ NFC_REG_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct nand_op_instr const*) ; 
 void* FUNC3 (struct nand_op_instr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_op_instr const*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct nand_op_instr const*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct meson_nfc*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct meson_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct meson_nfc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nand_chip*,void*,int /*<<< orphan*/ ) ; 
 struct meson_nfc* FUNC12 (struct nand_chip*) ; 
 struct meson_nfc_nand_chip* FUNC13 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC14 (size_t,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct nand_chip *nand,
			     const struct nand_operation *op, bool check_only)
{
	struct meson_nfc_nand_chip *meson_chip = FUNC13(nand);
	struct meson_nfc *nfc = FUNC12(nand);
	const struct nand_op_instr *instr = NULL;
	void *buf;
	u32 op_id, delay_idle, cmd;
	int i;

	FUNC9(nand, op->cs);
	for (op_id = 0; op_id < op->ninstrs; op_id++) {
		instr = &op->instrs[op_id];
		delay_idle = FUNC0(FUNC1(instr->delay_ns),
					  meson_chip->level1_divider *
					  NFC_CLK_CYCLE);
		switch (instr->type) {
		case NAND_OP_CMD_INSTR:
			cmd = nfc->param.chip_select | NFC_CMD_CLE;
			cmd |= instr->ctx.cmd.opcode & 0xff;
			FUNC14(cmd, nfc->reg_base + NFC_REG_CMD);
			FUNC6(nfc, delay_idle);
			break;

		case NAND_OP_ADDR_INSTR:
			for (i = 0; i < instr->ctx.addr.naddrs; i++) {
				cmd = nfc->param.chip_select | NFC_CMD_ALE;
				cmd |= instr->ctx.addr.addrs[i] & 0xff;
				FUNC14(cmd, nfc->reg_base + NFC_REG_CMD);
			}
			FUNC6(nfc, delay_idle);
			break;

		case NAND_OP_DATA_IN_INSTR:
			buf = FUNC2(instr);
			if (!buf)
				return -ENOMEM;
			FUNC8(nand, buf, instr->ctx.data.len);
			FUNC4(instr, buf);
			break;

		case NAND_OP_DATA_OUT_INSTR:
			buf = FUNC3(instr);
			if (!buf)
				return -ENOMEM;
			FUNC11(nand, buf, instr->ctx.data.len);
			FUNC5(instr, buf);
			break;

		case NAND_OP_WAITRDY_INSTR:
			FUNC7(nfc, instr->ctx.waitrdy.timeout_ms);
			if (instr->delay_ns)
				FUNC6(nfc, delay_idle);
			break;
		}
	}
	FUNC10(nfc, 1000);
	return 0;
}