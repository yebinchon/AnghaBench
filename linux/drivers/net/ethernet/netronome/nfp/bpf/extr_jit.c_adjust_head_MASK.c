#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {scalar_t__ adjust_head_location; TYPE_1__* bpf; } ;
struct nfp_insn_meta {scalar_t__ n; } ;
struct nfp_bpf_cap_adjust_head {int /*<<< orphan*/  off_max; int /*<<< orphan*/  off_min; } ;
struct TYPE_2__ {struct nfp_bpf_cap_adjust_head adjust_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_ADD ; 
 int /*<<< orphan*/  ALU_OP_ADD_2B ; 
 int /*<<< orphan*/  ALU_OP_SUB ; 
 int /*<<< orphan*/  BR_BLO ; 
 int /*<<< orphan*/  BR_BMI ; 
 int /*<<< orphan*/  BR_UNC ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  SHF_SC_NONE ; 
 scalar_t__ UINT_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_prog*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct nfp_prog*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	swreg tmp = FUNC4(nfp_prog), tmp_len = FUNC5(nfp_prog);
	struct nfp_bpf_cap_adjust_head *adjust_head;
	u32 ret_einval, end;

	adjust_head = &nfp_prog->bpf->adjust_head;

	/* Optimized version - 5 vs 14 cycles */
	if (nfp_prog->adjust_head_location != UINT_MAX) {
		if (FUNC0(nfp_prog->adjust_head_location != meta->n))
			return -EINVAL;

		FUNC1(nfp_prog, FUNC9(nfp_prog),
			 FUNC11(2 * 2), ALU_OP_ADD, FUNC9(nfp_prog));
		FUNC1(nfp_prog, FUNC8(nfp_prog),
			 FUNC8(nfp_prog), ALU_OP_SUB, FUNC11(2 * 2));
		FUNC1(nfp_prog, FUNC10(nfp_prog),
			 FUNC10(nfp_prog), ALU_OP_SUB, FUNC11(2 * 2));

		FUNC15(nfp_prog, FUNC12(0), 0);
		FUNC15(nfp_prog, FUNC12(1), 0);

		/* TODO: when adjust head is guaranteed to succeed we can
		 * also eliminate the following if (r0 == 0) branch.
		 */

		return 0;
	}

	ret_einval = FUNC7(nfp_prog) + 14;
	end = ret_einval + 2;

	/* We need to use a temp because offset is just a part of the pkt ptr */
	FUNC1(nfp_prog, tmp,
		 FUNC11(2 * 2), ALU_OP_ADD_2B, FUNC9(nfp_prog));

	/* Validate result will fit within FW datapath constraints */
	FUNC1(nfp_prog, FUNC14(),
		 tmp, ALU_OP_SUB, FUNC13(adjust_head->off_min));
	FUNC2(nfp_prog, BR_BLO, ret_einval, 0);
	FUNC1(nfp_prog, FUNC14(),
		 FUNC13(adjust_head->off_max), ALU_OP_SUB, tmp);
	FUNC2(nfp_prog, BR_BLO, ret_einval, 0);

	/* Validate the length is at least ETH_HLEN */
	FUNC1(nfp_prog, tmp_len,
		 FUNC8(nfp_prog), ALU_OP_SUB, FUNC11(2 * 2));
	FUNC1(nfp_prog, FUNC14(),
		 tmp_len, ALU_OP_SUB, FUNC13(ETH_HLEN));
	FUNC2(nfp_prog, BR_BMI, ret_einval, 0);

	/* Load the ret code */
	FUNC15(nfp_prog, FUNC12(0), 0);
	FUNC15(nfp_prog, FUNC12(1), 0);

	/* Modify the packet metadata */
	FUNC3(nfp_prog, FUNC9(nfp_prog), 0x3, tmp, SHF_SC_NONE, 0);

	/* Skip over the -EINVAL ret code (defer 2) */
	FUNC2(nfp_prog, BR_UNC, end, 2);

	FUNC1(nfp_prog, FUNC8(nfp_prog),
		 FUNC8(nfp_prog), ALU_OP_SUB, FUNC11(2 * 2));
	FUNC1(nfp_prog, FUNC10(nfp_prog),
		 FUNC10(nfp_prog), ALU_OP_SUB, FUNC11(2 * 2));

	/* return -EINVAL target */
	if (!FUNC6(nfp_prog, ret_einval))
		return -EINVAL;

	FUNC15(nfp_prog, FUNC12(0), -22);
	FUNC15(nfp_prog, FUNC12(1), ~0);

	if (!FUNC6(nfp_prog, end))
		return -EINVAL;

	return 0;
}