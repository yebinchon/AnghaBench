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
typedef  size_t u32 ;
struct TYPE_4__ {size_t proto; } ;
struct TYPE_3__ {size_t offload_handle; } ;
struct xfrm_state {TYPE_2__ id; TYPE_1__ xso; } ;
struct sk_buff {int dummy; } ;
struct sec_path {size_t len; } ;
struct nsim_sa {int /*<<< orphan*/  used; } ;
struct nsim_ipsec {int /*<<< orphan*/  tx; struct nsim_sa* sa; } ;
struct netdevsim {int /*<<< orphan*/  netdev; struct nsim_ipsec ipsec; } ;

/* Variables and functions */
 size_t IPPROTO_AH ; 
 size_t IPPROTO_ESP ; 
 size_t NSIM_IPSEC_MAX_SA_COUNT ; 
 size_t NSIM_IPSEC_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct sec_path* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct xfrm_state* FUNC3 (struct sk_buff*) ; 

bool FUNC4(struct netdevsim *ns, struct sk_buff *skb)
{
	struct sec_path *sp = FUNC1(skb);
	struct nsim_ipsec *ipsec = &ns->ipsec;
	struct xfrm_state *xs;
	struct nsim_sa *tsa;
	u32 sa_idx;

	/* do we even need to check this packet? */
	if (!sp)
		return true;

	if (FUNC2(!sp->len)) {
		FUNC0(ns->netdev, "no xfrm state len = %d\n",
			   sp->len);
		return false;
	}

	xs = FUNC3(skb);
	if (FUNC2(!xs)) {
		FUNC0(ns->netdev, "no xfrm_input_state() xs = %p\n", xs);
		return false;
	}

	sa_idx = xs->xso.offload_handle & ~NSIM_IPSEC_VALID;
	if (FUNC2(sa_idx >= NSIM_IPSEC_MAX_SA_COUNT)) {
		FUNC0(ns->netdev, "bad sa_idx=%d max=%d\n",
			   sa_idx, NSIM_IPSEC_MAX_SA_COUNT);
		return false;
	}

	tsa = &ipsec->sa[sa_idx];
	if (FUNC2(!tsa->used)) {
		FUNC0(ns->netdev, "unused sa_idx=%d\n", sa_idx);
		return false;
	}

	if (xs->id.proto != IPPROTO_ESP && xs->id.proto != IPPROTO_AH) {
		FUNC0(ns->netdev, "unexpected proto=%d\n", xs->id.proto);
		return false;
	}

	ipsec->tx++;

	return true;
}