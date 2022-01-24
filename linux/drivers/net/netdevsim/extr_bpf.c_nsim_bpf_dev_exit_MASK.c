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
struct nsim_dev {int /*<<< orphan*/  bpf_dev; int /*<<< orphan*/  bpf_bound_maps; int /*<<< orphan*/  bpf_bound_progs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct nsim_dev *nsim_dev)
{
	FUNC0(!FUNC2(&nsim_dev->bpf_bound_progs));
	FUNC0(!FUNC2(&nsim_dev->bpf_bound_maps));
	FUNC1(nsim_dev->bpf_dev);
}