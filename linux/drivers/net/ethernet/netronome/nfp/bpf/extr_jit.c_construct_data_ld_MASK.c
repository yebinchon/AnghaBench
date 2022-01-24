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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_SUB ; 
 int /*<<< orphan*/  BR_BLO ; 
 int /*<<< orphan*/  BR_OFF_RELO ; 
 int /*<<< orphan*/  RELO_BR_GO_ABORT ; 
 int FUNC0 (struct nfp_prog*,struct nfp_insn_meta*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_prog*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_prog*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
		  u16 offset, u8 size)
{
	swreg tmp_reg;

	/* Check packet length */
	tmp_reg = FUNC8(nfp_prog, offset + size, FUNC3(nfp_prog));
	FUNC1(nfp_prog, FUNC7(), FUNC5(nfp_prog), ALU_OP_SUB, tmp_reg);
	FUNC2(nfp_prog, BR_BLO, BR_OFF_RELO, 0, RELO_BR_GO_ABORT);

	/* Load data */
	tmp_reg = FUNC6(nfp_prog, offset, FUNC4(nfp_prog));
	return FUNC0(nfp_prog, meta, tmp_reg, 0, size);
}