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
struct nfp_prog {int dummy; } ;
struct bpf_reg_state {scalar_t__ type; } ;
struct nfp_insn_meta {struct bpf_reg_state ptr; } ;
struct bpf_verifier_env {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NFP_MAP_USE_ATOMIC_CNT ; 
 int /*<<< orphan*/  NFP_MAP_USE_READ ; 
 scalar_t__ NOT_INIT ; 
 scalar_t__ PTR_TO_CTX ; 
 scalar_t__ PTR_TO_MAP_VALUE ; 
 scalar_t__ PTR_TO_PACKET ; 
 scalar_t__ PTR_TO_STACK ; 
 struct bpf_reg_state* FUNC0 (struct bpf_verifier_env*) ; 
 scalar_t__ FUNC1 (struct nfp_insn_meta*) ; 
 scalar_t__ FUNC2 (struct nfp_insn_meta*) ; 
 scalar_t__ FUNC3 (struct nfp_insn_meta*) ; 
 int FUNC4 (struct nfp_prog*,struct nfp_insn_meta*,struct bpf_reg_state const*,struct bpf_verifier_env*) ; 
 int FUNC5 (struct bpf_verifier_env*,struct nfp_insn_meta*,struct bpf_reg_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_verifier_env*,char*,...) ; 

__attribute__((used)) static int
FUNC7(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
		  struct bpf_verifier_env *env, u8 reg_no)
{
	const struct bpf_reg_state *reg = FUNC0(env) + reg_no;
	int err;

	if (reg->type != PTR_TO_CTX &&
	    reg->type != PTR_TO_STACK &&
	    reg->type != PTR_TO_MAP_VALUE &&
	    reg->type != PTR_TO_PACKET) {
		FUNC6(env, "unsupported ptr type: %d\n", reg->type);
		return -EINVAL;
	}

	if (reg->type == PTR_TO_STACK) {
		err = FUNC4(nfp_prog, meta, reg, env);
		if (err)
			return err;
	}

	if (reg->type == PTR_TO_MAP_VALUE) {
		if (FUNC1(meta)) {
			err = FUNC5(env, meta, reg,
						    NFP_MAP_USE_READ);
			if (err)
				return err;
		}
		if (FUNC2(meta)) {
			FUNC6(env, "map writes not supported\n");
			return -EOPNOTSUPP;
		}
		if (FUNC3(meta)) {
			err = FUNC5(env, meta, reg,
						    NFP_MAP_USE_ATOMIC_CNT);
			if (err)
				return err;
		}
	}

	if (meta->ptr.type != NOT_INIT && meta->ptr.type != reg->type) {
		FUNC6(env, "ptr type changed for instruction %d -> %d\n",
			meta->ptr.type, reg->type);
		return -EINVAL;
	}

	meta->ptr = *reg;

	return 0;
}