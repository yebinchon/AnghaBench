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
typedef  scalar_t__ swreg ;
struct nfp_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_ADD ; 
 int /*<<< orphan*/  ALU_OP_ADD_C ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct nfp_prog*) ; 
 scalar_t__ FUNC2 (struct nfp_prog*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct nfp_prog *nfp_prog, u8 src_gpr, swreg offset,
	      swreg *rega, swreg *regb)
{
	if (offset == FUNC5(0)) {
		*rega = FUNC3(src_gpr);
		*regb = FUNC4(src_gpr + 1);
		return;
	}

	FUNC0(nfp_prog, FUNC1(nfp_prog), FUNC3(src_gpr), ALU_OP_ADD, offset);
	FUNC0(nfp_prog, FUNC2(nfp_prog), FUNC4(src_gpr + 1), ALU_OP_ADD_C,
		 FUNC5(0));
	*rega = FUNC1(nfp_prog);
	*regb = FUNC2(nfp_prog);
}