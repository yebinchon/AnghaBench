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
struct nfp_bar {int /*<<< orphan*/  refcnt; } ;
struct nfp6000_pcie {int /*<<< orphan*/  bar_waiters; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nfp6000_pcie *nfp, struct nfp_bar *bar)
{
	if (FUNC0(&bar->refcnt))
		FUNC1(&nfp->bar_waiters);
}