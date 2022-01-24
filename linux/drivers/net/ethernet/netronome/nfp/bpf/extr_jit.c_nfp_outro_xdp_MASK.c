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
	/* XDP return codes:
	 *   0 aborted  0x82 -> drop,  count as stat3
	 *   1    drop  0x22 -> drop,  count as stat1
	 *   2    pass  0x11 -> pass,  count as stat0
	 *   3      tx  0x44 -> redir, count as stat2
	 *   * unknown  0x82 -> drop,  count as stat3
	 */
	/* Target for aborts */
	nfp_prog->tgt_abort = FUNC5(nfp_prog);

	FUNC2(nfp_prog, BR_UNC, BR_OFF_RELO, 2, RELO_BR_NEXT_PKT);

	FUNC11(nfp_prog, FUNC6(0), NFP_BPF_ABI_FLAGS);
	FUNC3(nfp_prog, FUNC6(0), 0xc, FUNC8(0x82), SHF_SC_L_SHF, 16);

	/* Target for normal exits */
	nfp_prog->tgt_out = FUNC5(nfp_prog);

	/* if R0 > 3 jump to abort */
	FUNC0(nfp_prog, FUNC9(), FUNC8(3), ALU_OP_SUB, FUNC7(0));
	FUNC1(nfp_prog, BR_BLO, nfp_prog->tgt_abort, 0);

	FUNC10(nfp_prog, FUNC7(2), 0x44112282);

	FUNC4(nfp_prog, FUNC6(1),
		 FUNC9(), SHF_OP_NONE, FUNC7(0), SHF_SC_L_SHF, 3);

	FUNC0(nfp_prog, FUNC9(), FUNC6(1), ALU_OP_OR, FUNC8(0));
	FUNC4(nfp_prog, FUNC7(2),
		 FUNC8(0xff), SHF_OP_AND, FUNC7(2), SHF_SC_R_SHF, 0);

	FUNC2(nfp_prog, BR_UNC, BR_OFF_RELO, 2, RELO_BR_NEXT_PKT);

	FUNC11(nfp_prog, FUNC6(0), NFP_BPF_ABI_FLAGS);
	FUNC3(nfp_prog, FUNC6(0), 0xc, FUNC7(2), SHF_SC_L_SHF, 16);
}