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
struct nsim_dev {int /*<<< orphan*/  bpf_bind_accept; } ;
struct bpf_prog {TYPE_2__* aux; } ;
struct TYPE_4__ {TYPE_1__* offload; } ;
struct TYPE_3__ {int /*<<< orphan*/  offdev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct nsim_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nsim_dev*,struct bpf_prog*) ; 

__attribute__((used)) static int FUNC2(struct bpf_prog *prog)
{
	struct nsim_dev *nsim_dev =
			FUNC0(prog->aux->offload->offdev);

	if (!nsim_dev->bpf_bind_accept)
		return -EOPNOTSUPP;

	return FUNC1(nsim_dev, prog);
}