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
typedef  int u64 ;
typedef  int u16 ;
struct nfp_prog {int dummy; } ;
typedef  enum immed_width { ____Placeholder_immed_width } immed_width ;
typedef  enum immed_shift { ____Placeholder_immed_shift } immed_shift ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OP_IMMED_A_SRC ; 
 int OP_IMMED_BASE ; 
 int /*<<< orphan*/  OP_IMMED_B_SRC ; 
 int /*<<< orphan*/  OP_IMMED_DST_LMEXTN ; 
 int /*<<< orphan*/  OP_IMMED_IMM ; 
 int /*<<< orphan*/  OP_IMMED_INV ; 
 int /*<<< orphan*/  OP_IMMED_SHIFT ; 
 int /*<<< orphan*/  OP_IMMED_SRC_LMEXTN ; 
 int /*<<< orphan*/  OP_IMMED_WIDTH ; 
 int /*<<< orphan*/  OP_IMMED_WR_AB ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int) ; 

__attribute__((used)) static void
FUNC2(struct nfp_prog *nfp_prog, u16 areg, u16 breg, u16 imm_hi,
	     enum immed_width width, bool invert,
	     enum immed_shift shift, bool wr_both,
	     bool dst_lmextn, bool src_lmextn)
{
	u64 insn;

	insn = OP_IMMED_BASE |
		FUNC0(OP_IMMED_A_SRC, areg) |
		FUNC0(OP_IMMED_B_SRC, breg) |
		FUNC0(OP_IMMED_IMM, imm_hi) |
		FUNC0(OP_IMMED_WIDTH, width) |
		FUNC0(OP_IMMED_INV, invert) |
		FUNC0(OP_IMMED_SHIFT, shift) |
		FUNC0(OP_IMMED_WR_AB, wr_both) |
		FUNC0(OP_IMMED_SRC_LMEXTN, src_lmextn) |
		FUNC0(OP_IMMED_DST_LMEXTN, dst_lmextn);

	FUNC1(nfp_prog, insn);
}