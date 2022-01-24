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
typedef  scalar_t__ u64 ;
struct nfp_prog {int dummy; } ;
struct bpf_insn {int dst_reg; int src_reg; } ;
struct nfp_insn_meta {scalar_t__ umin_src; scalar_t__ umax_src; struct bpf_insn insn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_OR ; 
 int /*<<< orphan*/  SHF_OP_NONE ; 
 int /*<<< orphan*/  SHF_SC_R_SHF ; 
 int FUNC0 (struct nfp_prog*,struct nfp_insn_meta*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_prog*,struct nfp_insn_meta*,int) ; 

__attribute__((used)) static int FUNC9(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	const struct bpf_insn *insn = &meta->insn;
	u64 umin, umax;
	u8 dst, src;

	dst = insn->dst_reg * 2;
	umin = meta->umin_src;
	umax = meta->umax_src;
	if (umin == umax)
		return FUNC0(nfp_prog, meta, dst, umin);

	src = insn->src_reg * 2;
	FUNC1(nfp_prog, FUNC7(), FUNC3(src), ALU_OP_OR, FUNC6(0));
	FUNC2(nfp_prog, FUNC5(dst), FUNC7(), SHF_OP_NONE,
		       FUNC4(dst), SHF_SC_R_SHF);
	FUNC8(nfp_prog, meta, dst);
	return 0;
}