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
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_OR ; 
 int /*<<< orphan*/  SHF_OP_ASHR ; 
 int /*<<< orphan*/  SHF_SC_R_SHF ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*,struct nfp_insn_meta*,scalar_t__) ; 

__attribute__((used)) static int
FUNC8(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta, u8 dst,
	   u8 shift_amt)
{
	if (shift_amt) {
		/* Set signedness bit (MSB of result). */
		FUNC0(nfp_prog, FUNC6(), FUNC2(dst), ALU_OP_OR,
			 FUNC5(0));
		FUNC1(nfp_prog, FUNC4(dst), FUNC6(), SHF_OP_ASHR,
			 FUNC3(dst), SHF_SC_R_SHF, shift_amt);
	}
	FUNC7(nfp_prog, meta, dst);

	return 0;
}