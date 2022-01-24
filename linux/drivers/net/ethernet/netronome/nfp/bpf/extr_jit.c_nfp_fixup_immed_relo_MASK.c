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
typedef  int u32 ;
struct nfp_prog {int /*<<< orphan*/ * prog; } ;
struct nfp_insn_meta {int /*<<< orphan*/  off; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
		     struct nfp_insn_meta *jmp_dst, u32 br_idx)
{
	if (FUNC0(nfp_prog->prog[br_idx + 1])) {
		FUNC2("BUG: failed to fix up callee register saving\n");
		return -EINVAL;
	}

	FUNC1(&nfp_prog->prog[br_idx + 1], jmp_dst->off);

	return 0;
}