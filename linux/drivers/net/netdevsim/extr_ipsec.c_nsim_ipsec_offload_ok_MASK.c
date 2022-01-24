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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct xfrm_state {TYPE_1__ xso; } ;
struct sk_buff {int dummy; } ;
struct nsim_ipsec {int /*<<< orphan*/  ok; } ;
struct netdevsim {struct nsim_ipsec ipsec; } ;

/* Variables and functions */
 struct netdevsim* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct sk_buff *skb, struct xfrm_state *xs)
{
	struct netdevsim *ns = FUNC0(xs->xso.dev);
	struct nsim_ipsec *ipsec = &ns->ipsec;

	ipsec->ok++;

	return true;
}