#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nfp_prog {struct nfp_insn_meta* verifier_meta; } ;
struct TYPE_8__ {int code; scalar_t__ src_reg; scalar_t__ dst_reg; } ;
struct nfp_insn_meta {TYPE_4__ insn; } ;
struct bpf_verifier_env {TYPE_3__* prog; } ;
struct TYPE_7__ {TYPE_2__* aux; } ;
struct TYPE_6__ {TYPE_1__* offload; } ;
struct TYPE_5__ {struct nfp_prog* dev_priv; } ;

/* Variables and functions */
 int BPF_EXIT ; 
 int BPF_JMP ; 
 int EINVAL ; 
 scalar_t__ MAX_BPF_REG ; 
 scalar_t__ FUNC0 (struct nfp_insn_meta*) ; 
 scalar_t__ FUNC1 (struct nfp_insn_meta*) ; 
 scalar_t__ FUNC2 (struct nfp_insn_meta*) ; 
 scalar_t__ FUNC3 (struct nfp_insn_meta*) ; 
 scalar_t__ FUNC4 (struct nfp_insn_meta*) ; 
 int FUNC5 (struct nfp_prog*,struct nfp_insn_meta*,struct bpf_verifier_env*) ; 
 int FUNC6 (struct nfp_prog*,struct bpf_verifier_env*) ; 
 int FUNC7 (struct nfp_prog*,struct bpf_verifier_env*,struct nfp_insn_meta*) ; 
 int FUNC8 (struct nfp_prog*,struct nfp_insn_meta*,struct bpf_verifier_env*,scalar_t__) ; 
 int FUNC9 (struct nfp_prog*,struct nfp_insn_meta*,struct bpf_verifier_env*) ; 
 int FUNC10 (struct nfp_prog*,struct nfp_insn_meta*,struct bpf_verifier_env*) ; 
 struct nfp_insn_meta* FUNC11 (struct nfp_prog*,struct nfp_insn_meta*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct bpf_verifier_env*,char*,...) ; 

int FUNC14(struct bpf_verifier_env *env, int insn_idx,
		    int prev_insn_idx)
{
	struct nfp_prog *nfp_prog = env->prog->aux->offload->dev_priv;
	struct nfp_insn_meta *meta = nfp_prog->verifier_meta;

	meta = FUNC11(nfp_prog, meta, insn_idx);
	nfp_prog->verifier_meta = meta;

	if (!FUNC12(meta->insn.code)) {
		FUNC13(env, "instruction %#02x not supported\n",
			meta->insn.code);
		return -EINVAL;
	}

	if (meta->insn.src_reg >= MAX_BPF_REG ||
	    meta->insn.dst_reg >= MAX_BPF_REG) {
		FUNC13(env, "program uses extended registers - jit hardening?\n");
		return -EINVAL;
	}

	if (FUNC1(meta))
		return FUNC7(nfp_prog, env, meta);
	if (meta->insn.code == (BPF_JMP | BPF_EXIT))
		return FUNC6(nfp_prog, env);

	if (FUNC2(meta))
		return FUNC8(nfp_prog, meta, env,
					 meta->insn.src_reg);
	if (FUNC3(meta))
		return FUNC9(nfp_prog, meta, env);

	if (FUNC4(meta))
		return FUNC10(nfp_prog, meta, env);

	if (FUNC0(meta))
		return FUNC5(nfp_prog, meta, env);

	return 0;
}