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
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int src_reg; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_AND_NOT_B ; 
 int /*<<< orphan*/  BR_BEQ ; 
 int EINVAL ; 
 int NFP_NET_RXR_MAX ; 
 int /*<<< orphan*/  PKT_VEL_QSEL_SET_BIT ; 
 int /*<<< orphan*/  SHF_OP_OR ; 
 int /*<<< orphan*/  SHF_SC_L_SHF ; 
 int /*<<< orphan*/  SHF_SC_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int
FUNC12(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	u32 jmp_tgt;

	jmp_tgt = FUNC5(nfp_prog) + 5;

	/* Make sure the queue id fits into FW field */
	FUNC0(nfp_prog, FUNC11(), FUNC8(meta->insn.src_reg * 2),
		 ALU_OP_AND_NOT_B, FUNC10(0xff));
	FUNC1(nfp_prog, BR_BEQ, jmp_tgt, 2);

	/* Set the 'queue selected' bit and the queue value */
	FUNC3(nfp_prog, FUNC6(nfp_prog),
		 FUNC6(nfp_prog), SHF_OP_OR, FUNC10(1),
		 SHF_SC_L_SHF, PKT_VEL_QSEL_SET_BIT);
	FUNC2(nfp_prog,
		      FUNC7(nfp_prog), 0x1, FUNC9(meta->insn.src_reg * 2),
		      SHF_SC_NONE, 0);
	/* Delay slots end here, we will jump over next instruction if queue
	 * value fits into the field.
	 */
	FUNC2(nfp_prog,
		      FUNC7(nfp_prog), 0x1, FUNC10(NFP_NET_RXR_MAX),
		      SHF_SC_NONE, 0);

	if (!FUNC4(nfp_prog, jmp_tgt))
		return -EINVAL;

	return 0;
}