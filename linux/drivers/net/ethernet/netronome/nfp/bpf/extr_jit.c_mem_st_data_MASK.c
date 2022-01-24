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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int dst_reg; int /*<<< orphan*/  off; int /*<<< orphan*/  imm; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;

/* Variables and functions */
 int FUNC0 (struct nfp_prog*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
	    unsigned int size)
{
	u64 imm = meta->insn.imm; /* sign extend */
	swreg off_reg;

	off_reg = FUNC2(nfp_prog, meta->insn.off, FUNC1(nfp_prog));

	return FUNC0(nfp_prog, meta->insn.dst_reg * 2, off_reg,
				  imm, size);
}