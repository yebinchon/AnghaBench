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
typedef  unsigned int u8 ;
typedef  unsigned int u32 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {unsigned int stack_frame_depth; } ;
struct TYPE_2__ {unsigned int off; } ;
struct nfp_insn_meta {int flags; TYPE_1__ insn; scalar_t__ ptr_not_const; } ;
typedef  unsigned int s32 ;
typedef  int (* lmem_step ) (struct nfp_prog*,unsigned int,unsigned int,unsigned int,unsigned int,int,int,int,int,int) ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_ADD ; 
 int FLAG_INSN_DO_ZEXT ; 
 int FLAG_INSN_PTR_CALLER_STACK_FRAME ; 
 int /*<<< orphan*/  NFP_CSR_ACT_LM_ADDR3 ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int,int) ; 
 unsigned int FUNC6 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfp_prog*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfp_prog*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct nfp_prog*,struct nfp_insn_meta*,unsigned int) ; 

__attribute__((used)) static int
FUNC12(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
	     unsigned int size, unsigned int ptr_off, u8 gpr, u8 ptr_gpr,
	     bool clr_gpr, lmem_step step)
{
	s32 off = nfp_prog->stack_frame_depth + meta->insn.off + ptr_off;
	bool first = true, narrow_ld, last;
	bool needs_inc = false;
	swreg stack_off_reg;
	u8 prev_gpr = 255;
	u32 gpr_byte = 0;
	bool lm3 = true;
	int ret;

	if (meta->ptr_not_const ||
	    meta->flags & FLAG_INSN_PTR_CALLER_STACK_FRAME) {
		/* Use of the last encountered ptr_off is OK, they all have
		 * the same alignment.  Depend on low bits of value being
		 * discarded when written to LMaddr register.
		 */
		stack_off_reg = FUNC9(nfp_prog, meta->insn.off,
						FUNC7(nfp_prog));

		FUNC0(nfp_prog, FUNC2(nfp_prog),
			 FUNC4(ptr_gpr), ALU_OP_ADD, stack_off_reg);

		needs_inc = true;
	} else if (off + size <= 64) {
		/* We can reach bottom 64B with LMaddr0 */
		lm3 = false;
	} else if (FUNC5(off, 32) == FUNC5(off + size - 1, 32)) {
		/* We have to set up a new pointer.  If we know the offset
		 * and the entire access falls into a single 32 byte aligned
		 * window we won't have to increment the LM pointer.
		 * The 32 byte alignment is imporant because offset is ORed in
		 * not added when doing *l$indexN[off].
		 */
		stack_off_reg = FUNC9(nfp_prog, FUNC5(off, 32),
						FUNC7(nfp_prog));
		FUNC0(nfp_prog, FUNC2(nfp_prog),
			 FUNC8(nfp_prog), ALU_OP_ADD, stack_off_reg);

		off %= 32;
	} else {
		stack_off_reg = FUNC9(nfp_prog, FUNC5(off, 4),
						FUNC7(nfp_prog));

		FUNC0(nfp_prog, FUNC2(nfp_prog),
			 FUNC8(nfp_prog), ALU_OP_ADD, stack_off_reg);

		needs_inc = true;
	}

	narrow_ld = clr_gpr && size < 8;

	if (lm3) {
		unsigned int nop_cnt;

		FUNC1(nfp_prog, FUNC2(nfp_prog), NFP_CSR_ACT_LM_ADDR3);
		/* For size < 4 one slot will be filled by zeroing of upper,
		 * but be careful, that zeroing could be eliminated by zext
		 * optimization.
		 */
		nop_cnt = narrow_ld && meta->flags & FLAG_INSN_DO_ZEXT ? 2 : 3;
		FUNC10(nfp_prog, nop_cnt);
	}

	if (narrow_ld)
		FUNC11(nfp_prog, meta, gpr);

	while (size) {
		u32 slice_end;
		u8 slice_size;

		slice_size = FUNC3(size, 4 - gpr_byte);
		slice_end = FUNC3(off + slice_size, FUNC6(off + 1, 4));
		slice_size = slice_end - off;

		last = slice_size == size;

		if (needs_inc)
			off %= 4;

		ret = step(nfp_prog, gpr, gpr_byte, off, slice_size,
			   first, gpr != prev_gpr, last, lm3, needs_inc);
		if (ret)
			return ret;

		prev_gpr = gpr;
		first = false;

		gpr_byte += slice_size;
		if (gpr_byte >= 4) {
			gpr_byte -= 4;
			gpr++;
		}

		size -= slice_size;
		off += slice_size;
	}

	return 0;
}