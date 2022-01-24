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
typedef  int u8 ;
typedef  unsigned int u64 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
struct bpf_insn {unsigned int imm; int dst_reg; int /*<<< orphan*/  off; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_AND ; 
 int /*<<< orphan*/  ALU_OP_OR ; 
 int /*<<< orphan*/  BR_BNE ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*) ; 
 scalar_t__ FUNC3 (struct nfp_insn_meta*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_prog*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	const struct bpf_insn *insn = &meta->insn;
	u64 imm = insn->imm; /* sign extend */
	u8 dst_gpr = insn->dst_reg * 2;
	swreg tmp_reg;

	tmp_reg = FUNC6(nfp_prog, imm & ~0U, FUNC2(nfp_prog));
	FUNC0(nfp_prog, FUNC2(nfp_prog),
		 FUNC4(dst_gpr), ALU_OP_AND, tmp_reg);
	/* Upper word of the mask can only be 0 or ~0 from sign extension,
	 * so either ignore it or OR the whole thing in.
	 */
	if (FUNC3(meta) && imm >> 32) {
		FUNC0(nfp_prog, FUNC5(),
			 FUNC4(dst_gpr + 1), ALU_OP_OR, FUNC2(nfp_prog));
	}
	FUNC1(nfp_prog, BR_BNE, insn->off, 0);

	return 0;
}