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
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int dst_reg; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_SUB ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*,struct nfp_insn_meta*,int) ; 

__attribute__((used)) static int FUNC5(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	u8 dst = meta->insn.dst_reg * 2;

	FUNC0(nfp_prog, FUNC2(dst), FUNC3(0), ALU_OP_SUB, FUNC1(dst));
	FUNC4(nfp_prog, meta, dst);

	return 0;
}