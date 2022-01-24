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

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_OR ; 
 int /*<<< orphan*/  SHF_OP_ASHR ; 
 int /*<<< orphan*/  SHF_OP_NONE ; 
 int /*<<< orphan*/  SHF_SC_R_DSHF ; 
 int /*<<< orphan*/  SHF_SC_R_SHF ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*,int,int) ; 

__attribute__((used)) static int FUNC8(struct nfp_prog *nfp_prog, u8 dst, u8 shift_amt)
{
	if (!shift_amt)
		return 0;

	if (shift_amt < 32) {
		FUNC1(nfp_prog, FUNC4(dst), FUNC2(dst + 1), SHF_OP_NONE,
			 FUNC3(dst), SHF_SC_R_DSHF, shift_amt);
		/* Set signedness bit. */
		FUNC0(nfp_prog, FUNC6(), FUNC2(dst + 1), ALU_OP_OR,
			 FUNC5(0));
		FUNC1(nfp_prog, FUNC4(dst + 1), FUNC6(), SHF_OP_ASHR,
			 FUNC3(dst + 1), SHF_SC_R_SHF, shift_amt);
	} else if (shift_amt == 32) {
		/* NOTE: this also helps setting signedness bit. */
		FUNC7(nfp_prog, dst, dst + 1);
		FUNC1(nfp_prog, FUNC4(dst + 1), FUNC6(), SHF_OP_ASHR,
			 FUNC3(dst + 1), SHF_SC_R_SHF, 31);
	} else if (shift_amt > 32) {
		FUNC0(nfp_prog, FUNC6(), FUNC2(dst + 1), ALU_OP_OR,
			 FUNC5(0));
		FUNC1(nfp_prog, FUNC4(dst), FUNC6(), SHF_OP_ASHR,
			 FUNC3(dst + 1), SHF_SC_R_SHF, shift_amt - 32);
		FUNC1(nfp_prog, FUNC4(dst + 1), FUNC6(), SHF_OP_ASHR,
			 FUNC3(dst + 1), SHF_SC_R_SHF, 31);
	}

	return 0;
}