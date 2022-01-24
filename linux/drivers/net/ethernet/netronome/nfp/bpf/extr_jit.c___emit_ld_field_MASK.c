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
typedef  int u64 ;
struct nfp_prog {int dummy; } ;
typedef  enum shf_sc { ____Placeholder_shf_sc } shf_sc ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OP_LDF_A_SRC ; 
 int OP_LDF_BASE ; 
 int /*<<< orphan*/  OP_LDF_BMASK ; 
 int /*<<< orphan*/  OP_LDF_B_SRC ; 
 int /*<<< orphan*/  OP_LDF_DST_LMEXTN ; 
 int /*<<< orphan*/  OP_LDF_I8 ; 
 int /*<<< orphan*/  OP_LDF_SC ; 
 int /*<<< orphan*/  OP_LDF_SHF ; 
 int /*<<< orphan*/  OP_LDF_SRC_LMEXTN ; 
 int /*<<< orphan*/  OP_LDF_SW ; 
 int /*<<< orphan*/  OP_LDF_WR_AB ; 
 int /*<<< orphan*/  OP_LDF_ZF ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int) ; 

__attribute__((used)) static void
FUNC2(struct nfp_prog *nfp_prog, enum shf_sc sc,
		u8 areg, u8 bmask, u8 breg, u8 shift, bool imm8,
		bool zero, bool swap, bool wr_both,
		bool dst_lmextn, bool src_lmextn)
{
	u64 insn;

	insn = OP_LDF_BASE |
		FUNC0(OP_LDF_A_SRC, areg) |
		FUNC0(OP_LDF_SC, sc) |
		FUNC0(OP_LDF_B_SRC, breg) |
		FUNC0(OP_LDF_I8, imm8) |
		FUNC0(OP_LDF_SW, swap) |
		FUNC0(OP_LDF_ZF, zero) |
		FUNC0(OP_LDF_BMASK, bmask) |
		FUNC0(OP_LDF_SHF, shift) |
		FUNC0(OP_LDF_WR_AB, wr_both) |
		FUNC0(OP_LDF_SRC_LMEXTN, src_lmextn) |
		FUNC0(OP_LDF_DST_LMEXTN, dst_lmextn);

	FUNC1(nfp_prog, insn);
}