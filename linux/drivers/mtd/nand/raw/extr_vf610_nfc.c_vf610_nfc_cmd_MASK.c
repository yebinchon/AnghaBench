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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct vf610_nfc {int /*<<< orphan*/  data_access; scalar_t__ regs; } ;
struct nand_subop {int dummy; } ;
struct TYPE_8__ {scalar_t__ in; scalar_t__ out; } ;
struct TYPE_9__ {int force_8bit; TYPE_3__ buf; } ;
struct TYPE_7__ {int opcode; } ;
struct TYPE_6__ {int /*<<< orphan*/ * addrs; } ;
struct TYPE_10__ {TYPE_4__ data; TYPE_2__ cmd; TYPE_1__ addr; } ;
struct nand_op_instr {scalar_t__ type; TYPE_5__ ctx; } ;
struct nand_chip {int options; } ;

/* Variables and functions */
 int CMD_BYTE1_SHIFT ; 
 int CMD_BYTE2_SHIFT ; 
 int CMD_CODE_SHIFT ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int COMMAND_CMD_BYTE1 ; 
 int COMMAND_CMD_BYTE2 ; 
 int FUNC1 (int) ; 
 int COMMAND_RB_HANDSHAKE ; 
 int COMMAND_READ_DATA ; 
 int COMMAND_WRITE_DATA ; 
 int /*<<< orphan*/  CONFIG_16BIT ; 
 int EINVAL ; 
 int NAND_BUSWIDTH_16 ; 
 scalar_t__ NAND_OP_ADDR_INSTR ; 
 scalar_t__ NAND_OP_CMD_INSTR ; 
 scalar_t__ NAND_OP_DATA_IN_INSTR ; 
 scalar_t__ NAND_OP_DATA_OUT_INSTR ; 
 scalar_t__ NAND_OP_WAITRDY_INSTR ; 
 int /*<<< orphan*/  NFC_FLASH_CONFIG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct vf610_nfc* FUNC4 (struct nand_chip*) ; 
 int FUNC5 (struct nand_subop const*,int) ; 
 int FUNC6 (struct nand_subop const*,int) ; 
 int FUNC7 (struct nand_subop const*,int) ; 
 int FUNC8 (struct nand_subop const*,int) ; 
 struct nand_op_instr* FUNC9 (struct nand_subop const*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct vf610_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct vf610_nfc*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct vf610_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC15(struct nand_chip *chip,
			 const struct nand_subop *subop)
{
	const struct nand_op_instr *instr;
	struct vf610_nfc *nfc = FUNC4(chip);
	int op_id = -1, trfr_sz = 0, offset = 0;
	u32 col = 0, row = 0, cmd1 = 0, cmd2 = 0, code = 0;
	bool force8bit = false;

	/*
	 * Some ops are optional, but the hardware requires the operations
	 * to be in this exact order.
	 * The op parser enforces the order and makes sure that there isn't
	 * a read and write element in a single operation.
	 */
	instr = FUNC9(subop, &op_id);
	if (!instr)
		return -EINVAL;

	if (instr && instr->type == NAND_OP_CMD_INSTR) {
		cmd2 |= instr->ctx.cmd.opcode << CMD_BYTE1_SHIFT;
		code |= COMMAND_CMD_BYTE1;

		instr = FUNC9(subop, &op_id);
	}

	if (instr && instr->type == NAND_OP_ADDR_INSTR) {
		int naddrs = FUNC8(subop, op_id);
		int i = FUNC5(subop, op_id);

		for (; i < naddrs; i++) {
			u8 val = instr->ctx.addr.addrs[i];

			if (i < 2)
				col |= FUNC0(i, val);
			else
				row |= FUNC3(i - 2, val);
		}
		code |= FUNC1(naddrs);

		instr = FUNC9(subop, &op_id);
	}

	if (instr && instr->type == NAND_OP_DATA_OUT_INSTR) {
		trfr_sz = FUNC6(subop, op_id);
		offset = FUNC7(subop, op_id);
		force8bit = instr->ctx.data.force_8bit;

		/*
		 * Don't fix endianness on page access for historical reasons.
		 * See comment in vf610_nfc_wr_to_sram
		 */
		FUNC14(nfc->regs + FUNC2(0) + offset,
				     instr->ctx.data.buf.out + offset,
				     trfr_sz, !nfc->data_access);
		code |= COMMAND_WRITE_DATA;

		instr = FUNC9(subop, &op_id);
	}

	if (instr && instr->type == NAND_OP_CMD_INSTR) {
		cmd1 |= instr->ctx.cmd.opcode << CMD_BYTE2_SHIFT;
		code |= COMMAND_CMD_BYTE2;

		instr = FUNC9(subop, &op_id);
	}

	if (instr && instr->type == NAND_OP_WAITRDY_INSTR) {
		code |= COMMAND_RB_HANDSHAKE;

		instr = FUNC9(subop, &op_id);
	}

	if (instr && instr->type == NAND_OP_DATA_IN_INSTR) {
		trfr_sz = FUNC6(subop, op_id);
		offset = FUNC7(subop, op_id);
		force8bit = instr->ctx.data.force_8bit;

		code |= COMMAND_READ_DATA;
	}

	if (force8bit && (chip->options & NAND_BUSWIDTH_16))
		FUNC10(nfc, NFC_FLASH_CONFIG, CONFIG_16BIT);

	cmd2 |= code << CMD_CODE_SHIFT;

	FUNC12(nfc, col, row, cmd1, cmd2, trfr_sz);

	if (instr && instr->type == NAND_OP_DATA_IN_INSTR) {
		/*
		 * Don't fix endianness on page access for historical reasons.
		 * See comment in vf610_nfc_rd_from_sram
		 */
		FUNC11(instr->ctx.data.buf.in + offset,
				       nfc->regs + FUNC2(0) + offset,
				       trfr_sz, !nfc->data_access);
	}

	if (force8bit && (chip->options & NAND_BUSWIDTH_16))
		FUNC13(nfc, NFC_FLASH_CONFIG, CONFIG_16BIT);

	return 0;
}