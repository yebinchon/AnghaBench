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
typedef  int u16 ;
struct nfp_prog {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OP_BR_ALU_A_SRC ; 
 int OP_BR_ALU_BASE ; 
 int /*<<< orphan*/  OP_BR_ALU_B_SRC ; 
 int /*<<< orphan*/  OP_BR_ALU_DEFBR ; 
 int /*<<< orphan*/  OP_BR_ALU_DST_LMEXTN ; 
 int /*<<< orphan*/  OP_BR_ALU_IMM_HI ; 
 int /*<<< orphan*/  OP_BR_ALU_SRC_LMEXTN ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int) ; 

__attribute__((used)) static void
FUNC2(struct nfp_prog *nfp_prog, u16 areg, u16 breg, u16 imm_hi,
	      u8 defer, bool dst_lmextn, bool src_lmextn)
{
	u64 insn;

	insn = OP_BR_ALU_BASE |
		FUNC0(OP_BR_ALU_A_SRC, areg) |
		FUNC0(OP_BR_ALU_B_SRC, breg) |
		FUNC0(OP_BR_ALU_DEFBR, defer) |
		FUNC0(OP_BR_ALU_IMM_HI, imm_hi) |
		FUNC0(OP_BR_ALU_SRC_LMEXTN, src_lmextn) |
		FUNC0(OP_BR_ALU_DST_LMEXTN, dst_lmextn);

	FUNC1(nfp_prog, insn);
}