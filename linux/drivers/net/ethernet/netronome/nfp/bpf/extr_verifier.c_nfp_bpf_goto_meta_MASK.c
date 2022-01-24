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
struct nfp_prog {unsigned int n_insns; } ;
struct nfp_insn_meta {unsigned int n; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 struct nfp_insn_meta* FUNC1 (struct nfp_insn_meta*) ; 
 struct nfp_insn_meta* FUNC2 (struct nfp_insn_meta*) ; 
 struct nfp_insn_meta* FUNC3 (struct nfp_prog*) ; 
 struct nfp_insn_meta* FUNC4 (struct nfp_prog*) ; 

struct nfp_insn_meta *
FUNC5(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
		  unsigned int insn_idx)
{
	unsigned int forward, backward, i;

	backward = meta->n - insn_idx;
	forward = insn_idx - meta->n;

	if (FUNC0(forward, backward) > nfp_prog->n_insns - insn_idx - 1) {
		backward = nfp_prog->n_insns - insn_idx - 1;
		meta = FUNC4(nfp_prog);
	}
	if (FUNC0(forward, backward) > insn_idx && backward > insn_idx) {
		forward = insn_idx;
		meta = FUNC3(nfp_prog);
	}

	if (forward < backward)
		for (i = 0; i < forward; i++)
			meta = FUNC1(meta);
	else
		for (i = 0; i < backward; i++)
			meta = FUNC2(meta);

	return meta;
}