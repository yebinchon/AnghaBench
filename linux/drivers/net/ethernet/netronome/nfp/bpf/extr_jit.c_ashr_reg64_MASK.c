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
typedef  scalar_t__ u16 ;
struct nfp_prog {int dummy; } ;
struct bpf_insn {int dst_reg; int src_reg; } ;
struct nfp_insn_meta {int umin_src; int umax_src; struct bpf_insn insn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_UNC ; 
 int EINVAL ; 
 int FUNC0 (struct nfp_prog*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_prog*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_prog*,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	const struct bpf_insn *insn = &meta->insn;
	u64 umin, umax;
	u8 dst, src;

	dst = insn->dst_reg * 2;
	umin = meta->umin_src;
	umax = meta->umax_src;
	if (umin == umax)
		return FUNC0(nfp_prog, dst, umin);

	src = insn->src_reg * 2;
	if (umax < 32) {
		FUNC2(nfp_prog, dst, src);
	} else if (umin >= 32) {
		FUNC1(nfp_prog, dst, src);
	} else {
		u16 label_ge32, label_end;

		label_ge32 = FUNC8(nfp_prog) + 6;
		FUNC6(nfp_prog, FUNC9(src), 5, label_ge32, 0);
		FUNC4(nfp_prog, dst, src);
		label_end = FUNC8(nfp_prog) + 6;
		FUNC5(nfp_prog, BR_UNC, label_end, 2);
		/* ashr_reg64_lt32_high packed in delay slot. */
		FUNC3(nfp_prog, dst, src);

		if (!FUNC7(nfp_prog, label_ge32))
			return -EINVAL;
		FUNC1(nfp_prog, dst, src);

		if (!FUNC7(nfp_prog, label_end))
			return -EINVAL;
	}

	return 0;
}