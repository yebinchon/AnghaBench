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
typedef  unsigned int u8 ;
typedef  unsigned int u64 ;
typedef  int /*<<< orphan*/  swreg ;
struct reciprocal_value_adv {unsigned int exp; unsigned int m; int sh; scalar_t__ is_wide_m; } ;
struct nfp_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_ADD ; 
 int /*<<< orphan*/  ALU_OP_ADD_C ; 
 int /*<<< orphan*/  ALU_OP_SUB ; 
 int /*<<< orphan*/  SHF_OP_NONE ; 
 int /*<<< orphan*/  SHF_SC_R_SHF ; 
 unsigned int U32_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_prog*) ; 
 struct reciprocal_value_adv FUNC6 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct nfp_prog*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct nfp_prog *nfp_prog, u8 dst, u64 imm)
{
	swreg dst_both = FUNC8(dst), dst_a = FUNC7(dst), dst_b = FUNC7(dst);
	struct reciprocal_value_adv rvalue;
	u8 pre_shift, exp;
	swreg magic;

	if (imm > U32_MAX) {
		FUNC12(nfp_prog, dst_both, 0);
		return 0;
	}

	/* NOTE: because we are using "reciprocal_value_adv" which doesn't
	 * support "divisor > (1u << 31)", we need to JIT separate NFP sequence
	 * to handle such case which actually equals to the result of unsigned
	 * comparison "dst >= imm" which could be calculated using the following
	 * NFP sequence:
	 *
	 *  alu[--, dst, -, imm]
	 *  immed[imm, 0]
	 *  alu[dst, imm, +carry, 0]
	 *
	 */
	if (imm > 1U << 31) {
		swreg tmp_b = FUNC11(nfp_prog, imm, FUNC4(nfp_prog));

		FUNC0(nfp_prog, FUNC10(), dst_a, ALU_OP_SUB, tmp_b);
		FUNC12(nfp_prog, FUNC3(nfp_prog), 0);
		FUNC0(nfp_prog, dst_both, FUNC3(nfp_prog), ALU_OP_ADD_C,
			 FUNC9(0));
		return 0;
	}

	rvalue = FUNC6(imm, 32);
	exp = rvalue.exp;
	if (rvalue.is_wide_m && !(imm & 1)) {
		pre_shift = FUNC2(imm & -imm) - 1;
		rvalue = FUNC6(imm >> pre_shift, 32 - pre_shift);
	} else {
		pre_shift = 0;
	}
	magic = FUNC11(nfp_prog, rvalue.m, FUNC4(nfp_prog));
	if (imm == 1U << exp) {
		FUNC1(nfp_prog, dst_both, FUNC10(), SHF_OP_NONE, dst_b,
			 SHF_SC_R_SHF, exp);
	} else if (rvalue.is_wide_m) {
		FUNC13(nfp_prog, FUNC5(nfp_prog), FUNC10(), dst_a,
			    magic, true);
		FUNC0(nfp_prog, dst_both, dst_a, ALU_OP_SUB,
			 FUNC4(nfp_prog));
		FUNC1(nfp_prog, dst_both, FUNC10(), SHF_OP_NONE, dst_b,
			 SHF_SC_R_SHF, 1);
		FUNC0(nfp_prog, dst_both, dst_a, ALU_OP_ADD,
			 FUNC4(nfp_prog));
		FUNC1(nfp_prog, dst_both, FUNC10(), SHF_OP_NONE, dst_b,
			 SHF_SC_R_SHF, rvalue.sh - 1);
	} else {
		if (pre_shift)
			FUNC1(nfp_prog, dst_both, FUNC10(), SHF_OP_NONE,
				 dst_b, SHF_SC_R_SHF, pre_shift);
		FUNC13(nfp_prog, dst_both, FUNC10(), dst_a, magic, true);
		FUNC1(nfp_prog, dst_both, FUNC10(), SHF_OP_NONE,
			 dst_b, SHF_SC_R_SHF, rvalue.sh);
	}

	return 0;
}