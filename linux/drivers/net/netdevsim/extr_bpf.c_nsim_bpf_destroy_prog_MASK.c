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
struct nsim_bpf_bound_prog {int /*<<< orphan*/  l; int /*<<< orphan*/  ddir; int /*<<< orphan*/  is_loaded; } ;
struct bpf_prog {TYPE_2__* aux; } ;
struct TYPE_4__ {TYPE_1__* offload; } ;
struct TYPE_3__ {struct nsim_bpf_bound_prog* dev_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nsim_bpf_bound_prog*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bpf_prog *prog)
{
	struct nsim_bpf_bound_prog *state;

	state = prog->aux->offload->dev_priv;
	FUNC0(state->is_loaded,
	     "offload state destroyed while program still bound");
	FUNC1(state->ddir);
	FUNC3(&state->l);
	FUNC2(state);
}