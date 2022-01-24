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
struct nsim_bpf_bound_prog {TYPE_3__* nsim_dev; } ;
struct bpf_verifier_env {TYPE_4__* prog; } ;
struct TYPE_8__ {int len; TYPE_2__* aux; } ;
struct TYPE_7__ {scalar_t__ bpf_bind_verifier_delay; } ;
struct TYPE_6__ {TYPE_1__* offload; } ;
struct TYPE_5__ {struct nsim_bpf_bound_prog* dev_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_verifier_env*,char*) ; 

__attribute__((used)) static int
FUNC2(struct bpf_verifier_env *env, int insn_idx, int prev_insn)
{
	struct nsim_bpf_bound_prog *state;

	state = env->prog->aux->offload->dev_priv;
	if (state->nsim_dev->bpf_bind_verifier_delay && !insn_idx)
		FUNC0(state->nsim_dev->bpf_bind_verifier_delay);

	if (insn_idx == env->prog->len - 1)
		FUNC1(env, "Hello from netdevsim!\n");

	return 0;
}