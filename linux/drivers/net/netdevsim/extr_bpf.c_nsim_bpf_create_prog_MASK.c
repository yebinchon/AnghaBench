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
struct nsim_dev {int /*<<< orphan*/  bpf_bound_progs; int /*<<< orphan*/  ddir_bpf_bound_progs; int /*<<< orphan*/  prog_id_gen; } ;
struct nsim_bpf_bound_prog {char* state; int /*<<< orphan*/  l; int /*<<< orphan*/  is_loaded; int /*<<< orphan*/  ddir; struct bpf_prog* prog; struct nsim_dev* nsim_dev; } ;
struct bpf_prog {TYPE_2__* aux; } ;
struct TYPE_4__ {TYPE_1__* offload; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {struct nsim_bpf_bound_prog* dev_priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nsim_bpf_bound_prog*) ; 
 struct nsim_bpf_bound_prog* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nsim_bpf_string_fops ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct nsim_dev *nsim_dev,
				struct bpf_prog *prog)
{
	struct nsim_bpf_bound_prog *state;
	char name[16];

	state = FUNC6(sizeof(*state), GFP_KERNEL);
	if (!state)
		return -ENOMEM;

	state->nsim_dev = nsim_dev;
	state->prog = prog;
	state->state = "verify";

	/* Program id is not populated yet when we create the state. */
	FUNC8(name, "%u", nsim_dev->prog_id_gen++);
	state->ddir = FUNC2(name, nsim_dev->ddir_bpf_bound_progs);
	if (FUNC0(state->ddir)) {
		FUNC5(state);
		return -ENOMEM;
	}

	FUNC4("id", 0400, state->ddir, &prog->aux->id);
	FUNC3("state", 0400, state->ddir,
			    &state->state, &nsim_bpf_string_fops);
	FUNC1("loaded", 0400, state->ddir, &state->is_loaded);

	FUNC7(&state->l, &nsim_dev->bpf_bound_progs);

	prog->aux->offload->dev_priv = state;

	return 0;
}