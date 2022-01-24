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
struct TYPE_2__ {scalar_t__ type; } ;
struct bpf_insn {scalar_t__ dst_reg; scalar_t__ src_reg; int /*<<< orphan*/  code; } ;
struct nfp_insn_meta {int flags; TYPE_1__ ptr; struct bpf_insn insn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FLAG_INSN_IS_JUMP_DST ; 
 scalar_t__ PTR_TO_MAP_VALUE ; 
 scalar_t__ PTR_TO_PACKET ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_insn_meta*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_insn_meta*) ; 

__attribute__((used)) static bool
FUNC3(struct nfp_insn_meta *ld_meta,
		    struct nfp_insn_meta *st_meta)
{
	struct bpf_insn *ld = &ld_meta->insn;
	struct bpf_insn *st = &st_meta->insn;

	if (!FUNC1(ld_meta) || !FUNC2(st_meta))
		return false;

	if (ld_meta->ptr.type != PTR_TO_PACKET &&
	    ld_meta->ptr.type != PTR_TO_MAP_VALUE)
		return false;

	if (st_meta->ptr.type != PTR_TO_PACKET)
		return false;

	if (FUNC0(ld->code) != FUNC0(st->code))
		return false;

	if (ld->dst_reg != st->src_reg)
		return false;

	/* There is jump to the store insn in this pair. */
	if (st_meta->flags & FLAG_INSN_IS_JUMP_DST)
		return false;

	return true;
}