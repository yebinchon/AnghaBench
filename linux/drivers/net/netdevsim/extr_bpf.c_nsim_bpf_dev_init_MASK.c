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
struct nsim_dev {int bpf_bind_accept; int /*<<< orphan*/  bpf_bind_verifier_delay; int /*<<< orphan*/  ddir; int /*<<< orphan*/  bpf_dev; int /*<<< orphan*/  ddir_bpf_bound_progs; int /*<<< orphan*/  bpf_bound_maps; int /*<<< orphan*/  bpf_bound_progs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nsim_dev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nsim_bpf_dev_ops ; 

int FUNC7(struct nsim_dev *nsim_dev)
{
	int err;

	FUNC0(&nsim_dev->bpf_bound_progs);
	FUNC0(&nsim_dev->bpf_bound_maps);

	nsim_dev->ddir_bpf_bound_progs = FUNC5("bpf_bound_progs",
							    nsim_dev->ddir);
	if (FUNC1(nsim_dev->ddir_bpf_bound_progs))
		return -ENOMEM;

	nsim_dev->bpf_dev = FUNC3(&nsim_bpf_dev_ops, nsim_dev);
	err = FUNC2(nsim_dev->bpf_dev);
	if (err)
		return err;

	nsim_dev->bpf_bind_accept = true;
	FUNC4("bpf_bind_accept", 0600, nsim_dev->ddir,
			    &nsim_dev->bpf_bind_accept);
	FUNC6("bpf_bind_verifier_delay", 0600, nsim_dev->ddir,
			   &nsim_dev->bpf_bind_verifier_delay);
	return 0;
}