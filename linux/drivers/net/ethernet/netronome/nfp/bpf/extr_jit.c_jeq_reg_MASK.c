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
struct nfp_prog {int dummy; } ;
struct bpf_insn {int dst_reg; int src_reg; int /*<<< orphan*/  off; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_OR ; 
 int /*<<< orphan*/  ALU_OP_XOR ; 
 int /*<<< orphan*/  BR_BEQ ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*) ; 
 scalar_t__ FUNC4 (struct nfp_insn_meta*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	const struct bpf_insn *insn = &meta->insn;

	FUNC0(nfp_prog, FUNC2(nfp_prog), FUNC5(insn->dst_reg * 2),
		 ALU_OP_XOR, FUNC6(insn->src_reg * 2));
	if (FUNC4(meta)) {
		FUNC0(nfp_prog, FUNC3(nfp_prog),
			 FUNC5(insn->dst_reg * 2 + 1), ALU_OP_XOR,
			 FUNC6(insn->src_reg * 2 + 1));
		FUNC0(nfp_prog, FUNC7(), FUNC2(nfp_prog), ALU_OP_OR,
			 FUNC3(nfp_prog));
	}
	FUNC1(nfp_prog, BR_BEQ, insn->off, 0);

	return 0;
}