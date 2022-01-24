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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int dst_reg; scalar_t__ imm; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;

/* Variables and functions */
 struct nfp_insn_meta* FUNC0 (struct nfp_insn_meta*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	struct nfp_insn_meta *prev = FUNC0(meta);
	u32 imm_lo, imm_hi;
	u8 dst;

	dst = prev->insn.dst_reg * 2;
	imm_lo = prev->insn.imm;
	imm_hi = meta->insn.imm;

	FUNC3(nfp_prog, FUNC2(dst), imm_lo);

	/* mov is always 1 insn, load imm may be two, so try to use mov */
	if (imm_hi == imm_lo)
		FUNC4(nfp_prog, FUNC2(dst + 1), FUNC1(dst));
	else
		FUNC3(nfp_prog, FUNC2(dst + 1), imm_hi);

	return 0;
}