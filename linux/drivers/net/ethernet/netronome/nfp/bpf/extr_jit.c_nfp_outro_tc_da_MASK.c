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
struct nfp_prog {void* tgt_abort; void* tgt_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_OR ; 
 int /*<<< orphan*/  ALU_OP_SUB ; 
 int /*<<< orphan*/  BR_BLO ; 
 int /*<<< orphan*/  BR_OFF_RELO ; 
 int /*<<< orphan*/  BR_UNC ; 
 int /*<<< orphan*/  NFP_BPF_ABI_FLAGS ; 
 int /*<<< orphan*/  RELO_BR_NEXT_PKT ; 
 int /*<<< orphan*/  SHF_OP_AND ; 
 int /*<<< orphan*/  SHF_OP_NONE ; 
 int /*<<< orphan*/  SHF_OP_OR ; 
 int /*<<< orphan*/  SHF_SC_L_SHF ; 
 int /*<<< orphan*/  SHF_SC_R_SHF ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct nfp_prog*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct nfp_prog *nfp_prog)
{
	/* TC direct-action mode:
	 *   0,1   ok        NOT SUPPORTED[1]
	 *   2   drop  0x22 -> drop,  count as stat1
	 *   4,5 nuke  0x02 -> drop
	 *   7  redir  0x44 -> redir, count as stat2
	 *   * unspec  0x11 -> pass,  count as stat0
	 *
	 * [1] We can't support OK and RECLASSIFY because we can't tell TC
	 *     the exact decision made.  We are forced to support UNSPEC
	 *     to handle aborts so that's the only one we handle for passing
	 *     packets up the stack.
	 */
	/* Target for aborts */
	nfp_prog->tgt_abort = FUNC5(nfp_prog);

	FUNC2(nfp_prog, BR_UNC, BR_OFF_RELO, 2, RELO_BR_NEXT_PKT);

	FUNC11(nfp_prog, FUNC6(0), NFP_BPF_ABI_FLAGS);
	FUNC3(nfp_prog, FUNC6(0), 0xc, FUNC8(0x11), SHF_SC_L_SHF, 16);

	/* Target for normal exits */
	nfp_prog->tgt_out = FUNC5(nfp_prog);

	/* if R0 > 7 jump to abort */
	FUNC0(nfp_prog, FUNC9(), FUNC8(7), ALU_OP_SUB, FUNC7(0));
	FUNC1(nfp_prog, BR_BLO, nfp_prog->tgt_abort, 0);
	FUNC11(nfp_prog, FUNC6(0), NFP_BPF_ABI_FLAGS);

	FUNC10(nfp_prog, FUNC7(2), 0x41221211);
	FUNC10(nfp_prog, FUNC7(3), 0x41001211);

	FUNC4(nfp_prog, FUNC6(1),
		 FUNC9(), SHF_OP_NONE, FUNC7(0), SHF_SC_L_SHF, 2);

	FUNC0(nfp_prog, FUNC9(), FUNC6(1), ALU_OP_OR, FUNC8(0));
	FUNC4(nfp_prog, FUNC6(2),
		 FUNC8(0xf), SHF_OP_AND, FUNC7(2), SHF_SC_R_SHF, 0);

	FUNC0(nfp_prog, FUNC9(), FUNC6(1), ALU_OP_OR, FUNC8(0));
	FUNC4(nfp_prog, FUNC7(2),
		 FUNC8(0xf), SHF_OP_AND, FUNC7(3), SHF_SC_R_SHF, 0);

	FUNC2(nfp_prog, BR_UNC, BR_OFF_RELO, 2, RELO_BR_NEXT_PKT);

	FUNC4(nfp_prog, FUNC7(2),
		 FUNC6(2), SHF_OP_OR, FUNC7(2), SHF_SC_L_SHF, 4);
	FUNC3(nfp_prog, FUNC6(0), 0xc, FUNC7(2), SHF_SC_L_SHF, 16);
}