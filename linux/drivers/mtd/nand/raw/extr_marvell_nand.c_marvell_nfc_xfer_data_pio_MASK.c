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
typedef  int /*<<< orphan*/  u8 ;
struct nand_subop {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * out; int /*<<< orphan*/ * in; } ;
struct TYPE_5__ {scalar_t__ force_8bit; TYPE_1__ buf; } ;
struct TYPE_6__ {TYPE_2__ data; } ;
struct nand_op_instr {scalar_t__ type; TYPE_3__ ctx; } ;
struct nand_chip {int /*<<< orphan*/  controller; } ;
struct marvell_nfc_op {unsigned int data_instr_idx; struct nand_op_instr* data_instr; } ;
struct marvell_nfc {int dummy; } ;

/* Variables and functions */
 scalar_t__ NAND_OP_DATA_IN_INSTR ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int) ; 
 int FUNC1 (struct marvell_nfc*,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC2 (struct marvell_nfc*,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC3 (struct nand_subop const*,unsigned int) ; 
 unsigned int FUNC4 (struct nand_subop const*,unsigned int) ; 
 struct marvell_nfc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *chip,
				     const struct nand_subop *subop,
				     struct marvell_nfc_op *nfc_op)
{
	struct marvell_nfc *nfc = FUNC5(chip->controller);
	const struct nand_op_instr *instr = nfc_op->data_instr;
	unsigned int op_id = nfc_op->data_instr_idx;
	unsigned int len = FUNC3(subop, op_id);
	unsigned int offset = FUNC4(subop, op_id);
	bool reading = (instr->type == NAND_OP_DATA_IN_INSTR);
	int ret;

	if (instr->ctx.data.force_8bit)
		FUNC0(chip, true);

	if (reading) {
		u8 *in = instr->ctx.data.buf.in + offset;

		ret = FUNC1(nfc, in, len);
	} else {
		const u8 *out = instr->ctx.data.buf.out + offset;

		ret = FUNC2(nfc, out, len);
	}

	if (instr->ctx.data.force_8bit)
		FUNC0(chip, false);

	return ret;
}