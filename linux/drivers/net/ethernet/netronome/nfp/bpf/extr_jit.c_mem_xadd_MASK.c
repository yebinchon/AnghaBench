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
typedef  int u8 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int dst_reg; int src_reg; scalar_t__ off; } ;
struct nfp_insn_meta {scalar_t__ xadd_over_16bit; scalar_t__ xadd_maybe_16bit; TYPE_1__ insn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_ADD ; 
 int /*<<< orphan*/  ALU_OP_ADD_C ; 
 int /*<<< orphan*/  ALU_OP_SUB ; 
 int /*<<< orphan*/  ALU_OP_SUB_C ; 
 int /*<<< orphan*/  BR_BLO ; 
 int /*<<< orphan*/  BR_UNC ; 
 int /*<<< orphan*/  CMD_CTX_NO_SWAP ; 
 int /*<<< orphan*/  CMD_CTX_SWAP_DEFER1 ; 
 int /*<<< orphan*/  CMD_CTX_SWAP_DEFER2 ; 
 int /*<<< orphan*/  CMD_MODE_40b_BA ; 
 int /*<<< orphan*/  CMD_OVE_DATA ; 
 int CMD_OVE_LEN ; 
 int /*<<< orphan*/  CMD_OV_LEN ; 
 int /*<<< orphan*/  CMD_TGT_ADD ; 
 int /*<<< orphan*/  CMD_TGT_ADD_IMM ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfp_prog*,unsigned int) ; 
 unsigned int FUNC10 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct nfp_prog*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct nfp_prog*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC20(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta, bool is64)
{
	u8 dst_gpr = meta->insn.dst_reg * 2;
	u8 src_gpr = meta->insn.src_reg * 2;
	unsigned int full_add, out;
	swreg addra, addrb, off;

	off = FUNC16(nfp_prog, meta->insn.off, FUNC6(nfp_prog));

	/* We can fit 16 bits into command immediate, if we know the immediate
	 * is guaranteed to either always or never fit into 16 bit we only
	 * generate code to handle that particular case, otherwise generate
	 * code for both.
	 */
	out = FUNC10(nfp_prog);
	full_add = FUNC10(nfp_prog);

	if (meta->insn.off) {
		out += 2;
		full_add += 2;
	}
	if (meta->xadd_maybe_16bit) {
		out += 3;
		full_add += 3;
	}
	if (meta->xadd_over_16bit)
		out += 2 + is64;
	if (meta->xadd_maybe_16bit && meta->xadd_over_16bit) {
		out += 5;
		full_add += 5;
	}

	/* Generate the branch for choosing add_imm vs add */
	if (meta->xadd_maybe_16bit && meta->xadd_over_16bit) {
		swreg max_imm = FUNC5(nfp_prog);

		FUNC17(nfp_prog, max_imm, 0xffff);
		FUNC1(nfp_prog, FUNC14(),
			 max_imm, ALU_OP_SUB, FUNC12(src_gpr));
		FUNC1(nfp_prog, FUNC14(),
			 FUNC13(0), ALU_OP_SUB_C, FUNC12(src_gpr + 1));
		FUNC2(nfp_prog, BR_BLO, full_add, meta->insn.off ? 2 : 0);
		/* defer for add */
	}

	/* If insn has an offset add to the address */
	if (!meta->insn.off) {
		addra = FUNC11(dst_gpr);
		addrb = FUNC12(dst_gpr + 1);
	} else {
		FUNC1(nfp_prog, FUNC7(nfp_prog),
			 FUNC11(dst_gpr), ALU_OP_ADD, off);
		FUNC1(nfp_prog, FUNC8(nfp_prog),
			 FUNC11(dst_gpr + 1), ALU_OP_ADD_C, FUNC13(0));
		addra = FUNC7(nfp_prog);
		addrb = FUNC8(nfp_prog);
	}

	/* Generate the add_imm if 16 bits are possible */
	if (meta->xadd_maybe_16bit) {
		swreg prev_alu = FUNC5(nfp_prog);

		FUNC17(nfp_prog, prev_alu,
			  FUNC0(CMD_OVE_DATA, 2) |
			  CMD_OVE_LEN |
			  FUNC0(CMD_OV_LEN, 0x8 | is64 << 2));
		FUNC19(nfp_prog, prev_alu, FUNC12(src_gpr), 2, 2);
		FUNC4(nfp_prog, CMD_TGT_ADD_IMM, CMD_MODE_40b_BA, 0,
			       addra, addrb, 0, CMD_CTX_NO_SWAP);

		if (meta->xadd_over_16bit)
			FUNC2(nfp_prog, BR_UNC, out, 0);
	}

	if (!FUNC9(nfp_prog, full_add))
		return -EINVAL;

	/* Generate the add if 16 bits are not guaranteed */
	if (meta->xadd_over_16bit) {
		FUNC3(nfp_prog, CMD_TGT_ADD, CMD_MODE_40b_BA, 0,
			 addra, addrb, is64 << 2,
			 is64 ? CMD_CTX_SWAP_DEFER2 : CMD_CTX_SWAP_DEFER1);

		FUNC18(nfp_prog, FUNC15(0), FUNC11(src_gpr));
		if (is64)
			FUNC18(nfp_prog, FUNC15(1), FUNC11(src_gpr + 1));
	}

	if (!FUNC9(nfp_prog, out))
		return -EINVAL;

	return 0;
}