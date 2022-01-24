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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_ADD ; 
 int /*<<< orphan*/  ALU_OP_SUB ; 
 int /*<<< orphan*/  BR_BLO ; 
 int /*<<< orphan*/  BR_OFF_RELO ; 
 int /*<<< orphan*/  RELO_BR_GO_ABORT ; 
 int FUNC0 (struct nfp_prog*,struct nfp_insn_meta*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
		      u16 offset, u16 src, u8 size)
{
	swreg tmp_reg;

	/* Calculate the true offset (src_reg + imm) */
	tmp_reg = FUNC10(nfp_prog, offset, FUNC4(nfp_prog));
	FUNC1(nfp_prog, FUNC5(nfp_prog), FUNC7(src), ALU_OP_ADD, tmp_reg);

	/* Check packet length (size guaranteed to fit b/c it's u8) */
	FUNC1(nfp_prog, FUNC3(nfp_prog),
		 FUNC3(nfp_prog), ALU_OP_ADD, FUNC8(size));
	FUNC1(nfp_prog, FUNC9(),
		 FUNC6(nfp_prog), ALU_OP_SUB, FUNC3(nfp_prog));
	FUNC2(nfp_prog, BR_BLO, BR_OFF_RELO, 0, RELO_BR_GO_ABORT);

	/* Load data */
	return FUNC0(nfp_prog, meta, FUNC4(nfp_prog), 0, size);
}