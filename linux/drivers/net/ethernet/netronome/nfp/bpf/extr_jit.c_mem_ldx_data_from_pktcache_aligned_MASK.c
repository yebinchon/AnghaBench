#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
struct TYPE_4__ {unsigned int off; int dst_reg; } ;
struct TYPE_3__ {unsigned int range_start; } ;
struct nfp_insn_meta {TYPE_2__ insn; TYPE_1__ pkt_cache; } ;

/* Variables and functions */
 unsigned int REG_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*,struct nfp_insn_meta*,int) ; 

__attribute__((used)) static int
FUNC5(struct nfp_prog *nfp_prog,
				   struct nfp_insn_meta *meta,
				   unsigned int size)
{
	swreg dst_lo, dst_hi, src_lo;
	u8 dst_gpr, idx;

	idx = (meta->insn.off - meta->pkt_cache.range_start) / REG_WIDTH;
	dst_gpr = meta->insn.dst_reg * 2;
	dst_hi = FUNC0(dst_gpr + 1);
	dst_lo = FUNC0(dst_gpr);
	src_lo = FUNC1(idx);

	if (size < REG_WIDTH) {
		FUNC3(nfp_prog, dst_lo, src_lo, size, 0);
		FUNC4(nfp_prog, meta, dst_gpr);
	} else if (size == REG_WIDTH) {
		FUNC2(nfp_prog, dst_lo, src_lo);
		FUNC4(nfp_prog, meta, dst_gpr);
	} else {
		swreg src_hi = FUNC1(idx + 1);

		FUNC2(nfp_prog, dst_lo, src_lo);
		FUNC2(nfp_prog, dst_hi, src_hi);
	}

	return 0;
}