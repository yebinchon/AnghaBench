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
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMMED_SHIFT_0B ; 
 int /*<<< orphan*/  IMMED_WIDTH_ALL ; 
 int /*<<< orphan*/  NFP_CSR_PSEUDO_RND_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	FUNC0(nfp_prog, NFP_CSR_PSEUDO_RND_NUM);
	/* CSR value is read in following immed[gpr, 0] */
	FUNC1(nfp_prog, FUNC2(0), 0,
		   IMMED_WIDTH_ALL, false, IMMED_SHIFT_0B);
	FUNC1(nfp_prog, FUNC2(1), 0,
		   IMMED_WIDTH_ALL, false, IMMED_SHIFT_0B);
	return 0;
}