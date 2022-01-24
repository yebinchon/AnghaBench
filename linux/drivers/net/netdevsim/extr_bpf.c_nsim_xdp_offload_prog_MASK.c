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
struct netdevsim {scalar_t__ bpf_offloaded; } ;
struct netdev_bpf {scalar_t__ prog; int /*<<< orphan*/  extack; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct netdevsim*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netdevsim*) ; 

__attribute__((used)) static int FUNC3(struct netdevsim *ns, struct netdev_bpf *bpf)
{
	if (!FUNC2(ns) && !bpf->prog)
		return 0;
	if (!FUNC2(ns) && bpf->prog && ns->bpf_offloaded) {
		FUNC0(bpf->extack, "TC program is already loaded");
		return -EBUSY;
	}

	return FUNC1(ns, bpf->prog, FUNC2(ns));
}