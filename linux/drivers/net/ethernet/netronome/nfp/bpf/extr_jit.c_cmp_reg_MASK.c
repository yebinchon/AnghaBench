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
struct nfp_prog {int dummy; } ;
struct bpf_insn {int dst_reg; int src_reg; int /*<<< orphan*/  off; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;
struct jmp_code_map {int /*<<< orphan*/  br_mask; scalar_t__ swap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_SUB ; 
 int /*<<< orphan*/  ALU_OP_SUB_C ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nfp_insn_meta*) ; 
 struct jmp_code_map* FUNC3 (struct nfp_insn_meta*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	const struct bpf_insn *insn = &meta->insn;
	const struct jmp_code_map *code;
	u8 areg, breg;

	code = FUNC3(meta);
	if (!code)
		return -EINVAL;

	areg = insn->dst_reg * 2;
	breg = insn->src_reg * 2;

	if (code->swap) {
		areg ^= breg;
		breg ^= areg;
		areg ^= breg;
	}

	FUNC0(nfp_prog, FUNC6(), FUNC4(areg), ALU_OP_SUB, FUNC5(breg));
	if (FUNC2(meta))
		FUNC0(nfp_prog, FUNC6(),
			 FUNC4(areg + 1), ALU_OP_SUB_C, FUNC5(breg + 1));
	FUNC1(nfp_prog, code->br_mask, insn->off, 0);

	return 0;
}