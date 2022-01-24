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
 int /*<<< orphan*/  SHF_OP_NONE ; 
 int /*<<< orphan*/  SHF_SC_R_DSHF ; 
 int /*<<< orphan*/  SHF_SC_R_SHF ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_prog*,int,int) ; 

__attribute__((used)) static int FUNC7(struct nfp_prog *nfp_prog, u8 dst, u8 shift_amt)
{
	if (!shift_amt)
		return 0;

	if (shift_amt < 32) {
		FUNC0(nfp_prog, FUNC3(dst), FUNC1(dst + 1), SHF_OP_NONE,
			 FUNC2(dst), SHF_SC_R_DSHF, shift_amt);
		FUNC0(nfp_prog, FUNC3(dst + 1), FUNC4(), SHF_OP_NONE,
			 FUNC2(dst + 1), SHF_SC_R_SHF, shift_amt);
	} else if (shift_amt == 32) {
		FUNC6(nfp_prog, dst, dst + 1);
		FUNC5(nfp_prog, FUNC3(dst + 1), 0);
	} else if (shift_amt > 32) {
		FUNC0(nfp_prog, FUNC3(dst), FUNC4(), SHF_OP_NONE,
			 FUNC2(dst + 1), SHF_SC_R_SHF, shift_amt - 32);
		FUNC5(nfp_prog, FUNC3(dst + 1), 0);
	}

	return 0;
}