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
typedef  size_t u32 ;
typedef  size_t u16 ;
struct xfrm_state {int dummy; } ;
struct tx_sa {int mode; size_t vf; struct xfrm_state* xs; int /*<<< orphan*/  used; } ;
struct rx_sa {int mode; size_t vf; struct xfrm_state* xs; int /*<<< orphan*/  used; } ;
struct ixgbe_ipsec {struct tx_sa* tx_tbl; struct rx_sa* rx_tbl; } ;
struct ixgbe_adapter {TYPE_1__* vfinfo; struct ixgbe_ipsec* ipsec; } ;
struct TYPE_2__ {int /*<<< orphan*/  trusted; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EPERM ; 
 size_t IXGBE_IPSEC_BASE_RX_INDEX ; 
 size_t IXGBE_IPSEC_BASE_TX_INDEX ; 
 size_t IXGBE_IPSEC_MAX_SA_COUNT ; 
 int IXGBE_RXTXMOD_VF ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_state*) ; 

int FUNC3(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
{
	struct ixgbe_ipsec *ipsec = adapter->ipsec;
	struct xfrm_state *xs;
	u32 pfsa = msgbuf[1];
	u16 sa_idx;

	if (!adapter->vfinfo[vf].trusted) {
		FUNC0(drv, "vf %d attempted to delete an SA\n", vf);
		return -EPERM;
	}

	if (pfsa < IXGBE_IPSEC_BASE_TX_INDEX) {
		struct rx_sa *rsa;

		sa_idx = pfsa - IXGBE_IPSEC_BASE_RX_INDEX;
		if (sa_idx >= IXGBE_IPSEC_MAX_SA_COUNT) {
			FUNC0(drv, "vf %d SA index %d out of range\n",
			      vf, sa_idx);
			return -EINVAL;
		}

		rsa = &ipsec->rx_tbl[sa_idx];

		if (!rsa->used)
			return 0;

		if (!(rsa->mode & IXGBE_RXTXMOD_VF) ||
		    rsa->vf != vf) {
			FUNC0(drv, "vf %d bad Rx SA index %d\n", vf, sa_idx);
			return -ENOENT;
		}

		xs = ipsec->rx_tbl[sa_idx].xs;
	} else {
		struct tx_sa *tsa;

		sa_idx = pfsa - IXGBE_IPSEC_BASE_TX_INDEX;
		if (sa_idx >= IXGBE_IPSEC_MAX_SA_COUNT) {
			FUNC0(drv, "vf %d SA index %d out of range\n",
			      vf, sa_idx);
			return -EINVAL;
		}

		tsa = &ipsec->tx_tbl[sa_idx];

		if (!tsa->used)
			return 0;

		if (!(tsa->mode & IXGBE_RXTXMOD_VF) ||
		    tsa->vf != vf) {
			FUNC0(drv, "vf %d bad Tx SA index %d\n", vf, sa_idx);
			return -ENOENT;
		}

		xs = ipsec->tx_tbl[sa_idx].xs;
	}

	FUNC1(xs);

	/* remove the xs that was made-up in the add request */
	FUNC2(xs);

	return 0;
}