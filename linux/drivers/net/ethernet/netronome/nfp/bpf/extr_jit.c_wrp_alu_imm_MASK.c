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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
typedef  enum alu_op { ____Placeholder_alu_op } alu_op ;

/* Variables and functions */
 int ALU_OP_AND ; 
 int ALU_OP_NOT ; 
 int ALU_OP_OR ; 
 int ALU_OP_XOR ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC8(struct nfp_prog *nfp_prog, u8 dst, enum alu_op alu_op, u32 imm)
{
	swreg tmp_reg;

	if (alu_op == ALU_OP_AND) {
		if (!imm)
			FUNC7(nfp_prog, FUNC4(dst), 0);
		if (!imm || !~imm)
			return;
	}
	if (alu_op == ALU_OP_OR) {
		if (!~imm)
			FUNC7(nfp_prog, FUNC4(dst), ~0U);
		if (!imm || !~imm)
			return;
	}
	if (alu_op == ALU_OP_XOR) {
		if (!~imm)
			FUNC0(nfp_prog, FUNC4(dst), FUNC5(),
				 ALU_OP_NOT, FUNC3(dst));
		if (!imm || !~imm)
			return;
	}

	tmp_reg = FUNC6(nfp_prog, imm, FUNC1(nfp_prog));
	FUNC0(nfp_prog, FUNC4(dst), FUNC2(dst), alu_op, tmp_reg);
}