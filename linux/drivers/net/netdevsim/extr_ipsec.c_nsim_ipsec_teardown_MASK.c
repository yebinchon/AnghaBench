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
struct nsim_ipsec {int /*<<< orphan*/  pfile; scalar_t__ count; } ;
struct netdevsim {int /*<<< orphan*/  netdev; struct nsim_ipsec ipsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void FUNC2(struct netdevsim *ns)
{
	struct nsim_ipsec *ipsec = &ns->ipsec;

	if (ipsec->count)
		FUNC1(ns->netdev, "tearing down IPsec offload with %d SAs left\n",
			   ipsec->count);
	FUNC0(ipsec->pfile);
}