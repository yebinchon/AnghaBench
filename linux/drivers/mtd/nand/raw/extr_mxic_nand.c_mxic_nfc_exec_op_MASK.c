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
struct nand_operation {unsigned int ninstrs; struct nand_op_instr* instrs; } ;
struct TYPE_8__ {int /*<<< orphan*/ * out; int /*<<< orphan*/ * in; } ;
struct TYPE_9__ {int len; TYPE_3__ buf; } ;
struct TYPE_7__ {int naddrs; int /*<<< orphan*/ * addrs; } ;
struct TYPE_6__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_10__ {TYPE_4__ data; TYPE_2__ addr; TYPE_1__ cmd; } ;
struct nand_op_instr {int type; TYPE_5__ ctx; } ;
struct nand_chip {int dummy; } ;
struct mxic_nand_ctlr {scalar_t__ regs; int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 scalar_t__ HC_EN ; 
 int HC_EN_BIT ; 
#define  NAND_OP_ADDR_INSTR 132 
#define  NAND_OP_CMD_INSTR 131 
#define  NAND_OP_DATA_IN_INSTR 130 
#define  NAND_OP_DATA_OUT_INSTR 129 
#define  NAND_OP_WAITRDY_INSTR 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  OP_BUSW_8 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int OP_READ ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mxic_nand_ctlr*) ; 
 int /*<<< orphan*/  FUNC10 (struct mxic_nand_ctlr*) ; 
 int FUNC11 (struct mxic_nand_ctlr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC12 (struct nand_chip*) ; 
 struct mxic_nand_ctlr* FUNC13 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct nand_chip *chip,
			    const struct nand_operation *op, bool check_only)
{
	struct mxic_nand_ctlr *nfc = FUNC13(chip);
	const struct nand_op_instr *instr = NULL;
	int ret = 0;
	unsigned int op_id;

	FUNC10(nfc);
	FUNC8(&nfc->complete);
	for (op_id = 0; op_id < op->ninstrs; op_id++) {
		instr = &op->instrs[op_id];

		switch (instr->type) {
		case NAND_OP_CMD_INSTR:
			FUNC14(0, nfc->regs + HC_EN);
			FUNC14(HC_EN_BIT, nfc->regs + HC_EN);
			FUNC14(FUNC3(OP_BUSW_8) |  FUNC6(0x3F) |
			       FUNC4(0), nfc->regs + FUNC7(0));

			ret = FUNC11(nfc,
						 &instr->ctx.cmd.opcode,
						 NULL, 1);
			break;

		case NAND_OP_ADDR_INSTR:
			FUNC14(FUNC1(OP_BUSW_8) | FUNC6(0x3F) |
			       FUNC2(instr->ctx.addr.naddrs),
			       nfc->regs + FUNC7(0));
			ret = FUNC11(nfc,
						 instr->ctx.addr.addrs, NULL,
						 instr->ctx.addr.naddrs);
			break;

		case NAND_OP_DATA_IN_INSTR:
			FUNC14(0x0, nfc->regs + FUNC0(0));
			FUNC14(FUNC5(OP_BUSW_8) | FUNC6(0x3F) |
			       OP_READ, nfc->regs + FUNC7(0));
			ret = FUNC11(nfc, NULL,
						 instr->ctx.data.buf.in,
						 instr->ctx.data.len);
			break;

		case NAND_OP_DATA_OUT_INSTR:
			FUNC14(instr->ctx.data.len,
			       nfc->regs + FUNC0(0));
			FUNC14(FUNC5(OP_BUSW_8) | FUNC6(0x3F),
			       nfc->regs + FUNC7(0));
			ret = FUNC11(nfc,
						 instr->ctx.data.buf.out, NULL,
						 instr->ctx.data.len);
			break;

		case NAND_OP_WAITRDY_INSTR:
			ret = FUNC12(chip);
			break;
		}
	}
	FUNC9(nfc);

	return ret;
}