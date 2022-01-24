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
struct TYPE_8__ {int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct TYPE_9__ {int /*<<< orphan*/  force_8bit; int /*<<< orphan*/  len; TYPE_3__ buf; } ;
struct TYPE_7__ {int naddrs; int /*<<< orphan*/ * addrs; } ;
struct TYPE_6__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_10__ {TYPE_4__ data; TYPE_2__ addr; TYPE_1__ cmd; } ;
struct nand_op_instr {int type; TYPE_5__ ctx; } ;
struct nand_chip {int options; } ;
struct denali_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DENALI_MAP11_ADDR ; 
 int /*<<< orphan*/  DENALI_MAP11_CMD ; 
 int /*<<< orphan*/  DENALI_MAP11_DATA ; 
 int EINVAL ; 
 int NAND_BUSWIDTH_16 ; 
#define  NAND_OP_ADDR_INSTR 132 
#define  NAND_OP_CMD_INSTR 131 
#define  NAND_OP_DATA_IN_INSTR 130 
#define  NAND_OP_DATA_OUT_INSTR 129 
#define  NAND_OP_WAITRDY_INSTR 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct denali_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct denali_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct denali_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct denali_controller*) ; 
 struct denali_controller* FUNC5 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *chip,
			     const struct nand_op_instr *instr)
{
	struct denali_controller *denali = FUNC5(chip);

	switch (instr->type) {
	case NAND_OP_CMD_INSTR:
		FUNC3(denali, DENALI_MAP11_CMD,
				 &instr->ctx.cmd.opcode, 1);
		return 0;
	case NAND_OP_ADDR_INSTR:
		FUNC3(denali, DENALI_MAP11_ADDR,
				 instr->ctx.addr.addrs,
				 instr->ctx.addr.naddrs);
		return 0;
	case NAND_OP_DATA_IN_INSTR:
		FUNC1(denali, DENALI_MAP11_DATA,
			       instr->ctx.data.buf.in,
			       instr->ctx.data.len,
			       !instr->ctx.data.force_8bit &&
			       chip->options & NAND_BUSWIDTH_16);
		return 0;
	case NAND_OP_DATA_OUT_INSTR:
		FUNC2(denali, DENALI_MAP11_DATA,
				instr->ctx.data.buf.out,
				instr->ctx.data.len,
				!instr->ctx.data.force_8bit &&
				chip->options & NAND_BUSWIDTH_16);
		return 0;
	case NAND_OP_WAITRDY_INSTR:
		return FUNC4(denali);
	default:
		FUNC0(1, "unsupported NAND instruction type: %d\n",
			  instr->type);

		return -EINVAL;
	}
}