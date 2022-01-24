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

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_OR ; 
 int /*<<< orphan*/  SHF_OP_ASHR ; 
 int /*<<< orphan*/  SHF_SC_R_SHF ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct nfp_prog *nfp_prog, u8 dst, u8 src)
{
	/* NOTE: the first insn will set both indirect shift amount (source A)
	 * and signedness bit (MSB of result).
	 */
	FUNC0(nfp_prog, FUNC5(), FUNC2(src), ALU_OP_OR, FUNC3(dst + 1));
	FUNC1(nfp_prog, FUNC4(dst + 1), FUNC5(), SHF_OP_ASHR,
		       FUNC3(dst + 1), SHF_SC_R_SHF);
}