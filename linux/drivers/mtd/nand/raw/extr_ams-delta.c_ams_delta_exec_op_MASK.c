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
struct nand_operation {int ninstrs; struct nand_op_instr const* instrs; } ;
struct TYPE_11__ {int /*<<< orphan*/  timeout_ms; } ;
struct TYPE_9__ {int /*<<< orphan*/ * out; int /*<<< orphan*/  in; } ;
struct TYPE_10__ {int len; TYPE_3__ buf; } ;
struct TYPE_8__ {int naddrs; int /*<<< orphan*/ * addrs; } ;
struct TYPE_7__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_12__ {TYPE_5__ waitrdy; TYPE_4__ data; TYPE_2__ addr; TYPE_1__ cmd; } ;
typedef  struct nand_op_instr {int type; TYPE_6__ ctx; } const nand_op_instr ;
struct nand_chip {int dummy; } ;
struct ams_delta_nand {int /*<<< orphan*/  gpiod_rdy; int /*<<< orphan*/  gpiod_ale; int /*<<< orphan*/  gpiod_cle; } ;

/* Variables and functions */
#define  NAND_OP_ADDR_INSTR 132 
#define  NAND_OP_CMD_INSTR 131 
#define  NAND_OP_DATA_IN_INSTR 130 
#define  NAND_OP_DATA_OUT_INSTR 129 
#define  NAND_OP_WAITRDY_INSTR 128 
 int /*<<< orphan*/  FUNC0 (struct ams_delta_nand*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ams_delta_nand*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ams_delta_nand*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct ams_delta_nand* FUNC4 (struct nand_chip*) ; 
 int FUNC5 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nand_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *this,
			     const struct nand_operation *op, bool check_only)
{
	struct ams_delta_nand *priv = FUNC4(this);
	const struct nand_op_instr *instr;
	int ret = 0;

	if (check_only)
		return 0;

	FUNC0(priv, 1);

	for (instr = op->instrs; instr < op->instrs + op->ninstrs; instr++) {
		switch (instr->type) {
		case NAND_OP_CMD_INSTR:
			FUNC3(priv->gpiod_cle, 1);
			FUNC2(priv, &instr->ctx.cmd.opcode, 1);
			FUNC3(priv->gpiod_cle, 0);
			break;

		case NAND_OP_ADDR_INSTR:
			FUNC3(priv->gpiod_ale, 1);
			FUNC2(priv, instr->ctx.addr.addrs,
					    instr->ctx.addr.naddrs);
			FUNC3(priv->gpiod_ale, 0);
			break;

		case NAND_OP_DATA_IN_INSTR:
			FUNC1(priv, instr->ctx.data.buf.in,
					   instr->ctx.data.len);
			break;

		case NAND_OP_DATA_OUT_INSTR:
			FUNC2(priv, instr->ctx.data.buf.out,
					    instr->ctx.data.len);
			break;

		case NAND_OP_WAITRDY_INSTR:
			ret = priv->gpiod_rdy ?
			      FUNC5(this, priv->gpiod_rdy,
						instr->ctx.waitrdy.timeout_ms) :
			      FUNC6(this,
						instr->ctx.waitrdy.timeout_ms);
			break;
		}

		if (ret)
			break;
	}

	FUNC0(priv, 0);

	return ret;
}