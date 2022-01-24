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
struct TYPE_2__ {int /*<<< orphan*/  new_prog; } ;
struct qede_reload_args {TYPE_1__ u; } ;
struct qede_dev {int /*<<< orphan*/  xdp_prog; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_prog*) ; 
 struct bpf_prog* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qede_dev *edev,
				 struct qede_reload_args *args)
{
	struct bpf_prog *old;

	old = FUNC1(&edev->xdp_prog, args->u.new_prog);
	if (old)
		FUNC0(old);
}