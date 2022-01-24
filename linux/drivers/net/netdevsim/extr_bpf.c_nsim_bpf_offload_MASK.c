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
struct netdevsim {int /*<<< orphan*/  bpf_offloaded_id; struct bpf_prog* bpf_offloaded; } ;
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*,int) ; 

__attribute__((used)) static int
FUNC2(struct netdevsim *ns, struct bpf_prog *prog, bool oldprog)
{
	FUNC1(ns->bpf_offloaded, false);

	FUNC0(!!ns->bpf_offloaded != oldprog,
	     "bad offload state, expected offload %sto be active",
	     oldprog ? "" : "not ");
	ns->bpf_offloaded = prog;
	ns->bpf_offloaded_id = prog ? prog->aux->id : 0;
	FUNC1(prog, true);

	return 0;
}