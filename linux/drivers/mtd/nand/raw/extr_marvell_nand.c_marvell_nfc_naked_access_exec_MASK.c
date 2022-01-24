#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nand_subop {TYPE_1__* instrs; } ;
struct nand_chip {int /*<<< orphan*/  controller; } ;
struct marvell_nfc_op {int* ndcb; int /*<<< orphan*/  cle_ale_delay_ns; int /*<<< orphan*/  data_instr; } ;
struct marvell_nfc {scalar_t__ regs; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
#define  NAND_OP_ADDR_INSTR 131 
#define  NAND_OP_CMD_INSTR 130 
#define  NAND_OP_DATA_IN_INSTR 129 
#define  NAND_OP_DATA_OUT_INSTR 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NDCR ; 
 int NDCR_ND_RUN ; 
 int NDSR_RDDREQ ; 
 int NDSR_WRDREQ ; 
 int /*<<< orphan*/  TYPE_MASK ; 
 int /*<<< orphan*/  TYPE_NAKED_ADDR ; 
 int /*<<< orphan*/  TYPE_NAKED_CMD ; 
 int /*<<< orphan*/  TYPE_READ ; 
 int /*<<< orphan*/  TYPE_WRITE ; 
 int /*<<< orphan*/  XTYPE_LAST_NAKED_RW ; 
 int /*<<< orphan*/  XTYPE_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nand_chip*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*,struct nand_subop const*,struct marvell_nfc_op*) ; 
 int FUNC5 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct nand_chip*,struct marvell_nfc_op*) ; 
 int FUNC7 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct nand_chip*,struct nand_subop const*,struct marvell_nfc_op*) ; 
 int FUNC9 (scalar_t__) ; 
 struct marvell_nfc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct nand_chip *chip,
					 const struct nand_subop *subop)
{
	struct marvell_nfc_op nfc_op;
	int ret;

	FUNC4(chip, subop, &nfc_op);

	/*
	 * Naked access are different in that they need to be flagged as naked
	 * by the controller. Reset the controller registers fields that inform
	 * on the type and refill them according to the ongoing operation.
	 */
	nfc_op.ndcb[0] &= ~(FUNC0(TYPE_MASK) |
			    FUNC1(XTYPE_MASK));
	switch (subop->instrs[0].type) {
	case NAND_OP_CMD_INSTR:
		nfc_op.ndcb[0] |= FUNC0(TYPE_NAKED_CMD);
		break;
	case NAND_OP_ADDR_INSTR:
		nfc_op.ndcb[0] |= FUNC0(TYPE_NAKED_ADDR);
		break;
	case NAND_OP_DATA_IN_INSTR:
		nfc_op.ndcb[0] |= FUNC0(TYPE_READ) |
				  FUNC1(XTYPE_LAST_NAKED_RW);
		break;
	case NAND_OP_DATA_OUT_INSTR:
		nfc_op.ndcb[0] |= FUNC0(TYPE_WRITE) |
				  FUNC1(XTYPE_LAST_NAKED_RW);
		break;
	default:
		/* This should never happen */
		break;
	}

	ret = FUNC5(chip);
	if (ret)
		return ret;

	FUNC6(chip, &nfc_op);

	if (!nfc_op.data_instr) {
		ret = FUNC7(chip);
		FUNC2(nfc_op.cle_ale_delay_ns);
		return ret;
	}

	ret = FUNC3(chip, NDSR_RDDREQ | NDSR_WRDREQ,
				  "RDDREQ/WRDREQ while draining raw data");
	if (ret)
		return ret;

	FUNC8(chip, subop, &nfc_op);
	ret = FUNC7(chip);
	if (ret)
		return ret;

	/*
	 * NDCR ND_RUN bit should be cleared automatically at the end of each
	 * operation but experience shows that the behavior is buggy when it
	 * comes to writes (with LEN_OVRD). Clear it by hand in this case.
	 */
	if (subop->instrs[0].type == NAND_OP_DATA_OUT_INSTR) {
		struct marvell_nfc *nfc = FUNC10(chip->controller);

		FUNC11(FUNC9(nfc->regs + NDCR) & ~NDCR_ND_RUN,
			       nfc->regs + NDCR);
	}

	return 0;
}