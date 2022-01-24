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
struct bpf_insn {int dst_reg; int imm; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHF_SC_R_ROT ; 
 int /*<<< orphan*/  SHF_SC_R_SHF ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_prog*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	const struct bpf_insn *insn = &meta->insn;
	u8 gpr = insn->dst_reg * 2;

	switch (insn->imm) {
	case 16:
		FUNC0(nfp_prog, FUNC4(gpr), 0x9, FUNC3(gpr),
			      SHF_SC_R_ROT, 8);
		FUNC0(nfp_prog, FUNC4(gpr), 0xe, FUNC2(gpr),
			      SHF_SC_R_SHF, 16);

		FUNC6(nfp_prog, FUNC4(gpr + 1), 0);
		break;
	case 32:
		FUNC5(nfp_prog, FUNC2(gpr), gpr);
		FUNC6(nfp_prog, FUNC4(gpr + 1), 0);
		break;
	case 64:
		FUNC7(nfp_prog, FUNC1(nfp_prog), FUNC3(gpr + 1));

		FUNC5(nfp_prog, FUNC2(gpr), gpr + 1);
		FUNC5(nfp_prog, FUNC1(nfp_prog), gpr);
		break;
	}

	return 0;
}