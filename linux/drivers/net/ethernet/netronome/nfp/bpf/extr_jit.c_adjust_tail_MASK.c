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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ swreg ;
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_ADD ; 
 int /*<<< orphan*/  ALU_OP_SUB ; 
 int /*<<< orphan*/  BR_BCC ; 
 int /*<<< orphan*/  BR_BMI ; 
 int /*<<< orphan*/  BR_UNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  STATIC_REG_PKT_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC3 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct nfp_prog*) ; 
 scalar_t__ FUNC6 (struct nfp_prog*) ; 
 scalar_t__ FUNC7 (struct nfp_prog*) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct nfp_prog*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	u32 ret_einval, end;
	swreg plen, delta;

	FUNC0(FUNC6(nfp_prog) != FUNC9(STATIC_REG_PKT_LEN));

	plen = FUNC3(nfp_prog);
	delta = FUNC8(2 * 2);

	ret_einval = FUNC5(nfp_prog) + 9;
	end = FUNC5(nfp_prog) + 11;

	/* Calculate resulting length */
	FUNC1(nfp_prog, plen, FUNC6(nfp_prog), ALU_OP_ADD, delta);
	/* delta == 0 is not allowed by the kernel, add must overflow to make
	 * length smaller.
	 */
	FUNC2(nfp_prog, BR_BCC, ret_einval, 0);

	/* if (new_len < 14) then -EINVAL */
	FUNC1(nfp_prog, FUNC12(), plen, ALU_OP_SUB, FUNC11(ETH_HLEN));
	FUNC2(nfp_prog, BR_BMI, ret_einval, 0);

	FUNC1(nfp_prog, FUNC6(nfp_prog),
		 FUNC6(nfp_prog), ALU_OP_ADD, delta);
	FUNC1(nfp_prog, FUNC7(nfp_prog),
		 FUNC7(nfp_prog), ALU_OP_ADD, delta);

	FUNC2(nfp_prog, BR_UNC, end, 2);
	FUNC13(nfp_prog, FUNC10(0), 0);
	FUNC13(nfp_prog, FUNC10(1), 0);

	if (!FUNC4(nfp_prog, ret_einval))
		return -EINVAL;

	FUNC13(nfp_prog, FUNC10(0), -22);
	FUNC13(nfp_prog, FUNC10(1), ~0);

	if (!FUNC4(nfp_prog, end))
		return -EINVAL;

	return 0;
}