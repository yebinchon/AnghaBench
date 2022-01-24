#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct nfp_prog {struct nfp_insn_meta* verifier_meta; } ;
struct TYPE_9__ {int /*<<< orphan*/  code; } ;
struct nfp_insn_meta {int jump_neg_op; TYPE_4__ insn; TYPE_5__* jmp_dst; } ;
struct bpf_verifier_env {struct bpf_insn_aux_data* insn_aux_data; TYPE_3__* prog; } ;
struct bpf_insn_aux_data {scalar_t__ orig_idx; } ;
struct bpf_insn {int code; size_t off; } ;
struct TYPE_10__ {scalar_t__ n; } ;
struct TYPE_8__ {TYPE_2__* aux; } ;
struct TYPE_7__ {TYPE_1__* offload; } ;
struct TYPE_6__ {struct nfp_prog* dev_priv; } ;

/* Variables and functions */
 int BPF_JA ; 
 int BPF_JMP ; 
 int BPF_K ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct nfp_insn_meta*) ; 
 int /*<<< orphan*/  l ; 
 TYPE_5__* FUNC1 (struct nfp_insn_meta*,int /*<<< orphan*/ ) ; 
 struct nfp_insn_meta* FUNC2 (struct nfp_prog*,struct nfp_insn_meta*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_verifier_env*,char*,size_t,int,...) ; 

int FUNC4(struct bpf_verifier_env *env, u32 off,
			     struct bpf_insn *insn)
{
	struct nfp_prog *nfp_prog = env->prog->aux->offload->dev_priv;
	struct bpf_insn_aux_data *aux_data = env->insn_aux_data;
	struct nfp_insn_meta *meta = nfp_prog->verifier_meta;

	meta = FUNC2(nfp_prog, meta, aux_data[off].orig_idx);
	nfp_prog->verifier_meta = meta;

	/* conditional jump to jump conversion */
	if (FUNC0(meta) &&
	    insn->code == (BPF_JMP | BPF_JA | BPF_K)) {
		unsigned int tgt_off;

		tgt_off = off + insn->off + 1;

		if (!insn->off) {
			meta->jmp_dst = FUNC1(meta, l);
			meta->jump_neg_op = false;
		} else if (meta->jmp_dst->n != aux_data[tgt_off].orig_idx) {
			FUNC3(env, "branch hard wire at %d changes target %d -> %d\n",
				off, meta->jmp_dst->n,
				aux_data[tgt_off].orig_idx);
			return -EINVAL;
		}
		return 0;
	}

	FUNC3(env, "unsupported instruction replacement %hhx -> %hhx\n",
		meta->insn.code, insn->code);
	return -EINVAL;
}