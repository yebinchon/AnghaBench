#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned int u64 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
struct bpf_insn {unsigned int imm; int dst_reg; int /*<<< orphan*/  off; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_OR ; 
 int /*<<< orphan*/  ALU_OP_XOR ; 
 int /*<<< orphan*/  BR_BEQ ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	const struct bpf_insn *insn = &meta->insn;
	u64 imm = insn->imm; /* sign extend */
	swreg or1, or2, tmp_reg;

	or1 = FUNC4(insn->dst_reg * 2);
	or2 = FUNC5(insn->dst_reg * 2 + 1);

	if (imm & ~0U) {
		tmp_reg = FUNC7(nfp_prog, imm & ~0U, FUNC3(nfp_prog));
		FUNC0(nfp_prog, FUNC2(nfp_prog),
			 FUNC4(insn->dst_reg * 2), ALU_OP_XOR, tmp_reg);
		or1 = FUNC2(nfp_prog);
	}

	if (imm >> 32) {
		tmp_reg = FUNC7(nfp_prog, imm >> 32, FUNC3(nfp_prog));
		FUNC0(nfp_prog, FUNC3(nfp_prog),
			 FUNC4(insn->dst_reg * 2 + 1), ALU_OP_XOR, tmp_reg);
		or2 = FUNC3(nfp_prog);
	}

	FUNC0(nfp_prog, FUNC6(), or1, ALU_OP_OR, or2);
	FUNC1(nfp_prog, BR_BEQ, insn->off, 0);

	return 0;
}