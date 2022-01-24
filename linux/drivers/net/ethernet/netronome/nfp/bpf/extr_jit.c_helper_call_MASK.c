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
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int imm; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;

/* Variables and functions */
#define  BPF_FUNC_get_prandom_u32 134 
#define  BPF_FUNC_map_delete_elem 133 
#define  BPF_FUNC_map_lookup_elem 132 
#define  BPF_FUNC_map_update_elem 131 
#define  BPF_FUNC_perf_event_output 130 
#define  BPF_FUNC_xdp_adjust_head 129 
#define  BPF_FUNC_xdp_adjust_tail 128 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct nfp_prog*,struct nfp_insn_meta*) ; 
 int FUNC2 (struct nfp_prog*,struct nfp_insn_meta*) ; 
 int FUNC3 (struct nfp_prog*,struct nfp_insn_meta*) ; 
 int FUNC4 (struct nfp_prog*,struct nfp_insn_meta*) ; 
 int FUNC5 (struct nfp_prog*,struct nfp_insn_meta*) ; 

__attribute__((used)) static int FUNC6(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	switch (meta->insn.imm) {
	case BPF_FUNC_xdp_adjust_head:
		return FUNC1(nfp_prog, meta);
	case BPF_FUNC_xdp_adjust_tail:
		return FUNC2(nfp_prog, meta);
	case BPF_FUNC_map_lookup_elem:
	case BPF_FUNC_map_update_elem:
	case BPF_FUNC_map_delete_elem:
		return FUNC3(nfp_prog, meta);
	case BPF_FUNC_get_prandom_u32:
		return FUNC4(nfp_prog, meta);
	case BPF_FUNC_perf_event_output:
		return FUNC5(nfp_prog, meta);
	default:
		FUNC0(1, "verifier allowed unsupported function\n");
		return -EOPNOTSUPP;
	}
}