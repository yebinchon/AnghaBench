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
typedef  int u32 ;
struct net_device {int flags; } ;
struct bnxt_vnic_info {int rx_mask; scalar_t__ mc_list_count; } ;
struct bnxt {int /*<<< orphan*/  sp_event; struct bnxt_vnic_info* vnic_info; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_RX_MASK_SP_EVENT ; 
 int /*<<< orphan*/  BNXT_STATE_OPEN ; 
 int CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST ; 
 int CFA_L2_SET_RX_MASK_REQ_MASK_BCAST ; 
 int CFA_L2_SET_RX_MASK_REQ_MASK_MCAST ; 
 int CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_PROMISC ; 
 int FUNC0 (struct bnxt*,int*) ; 
 scalar_t__ FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 int FUNC3 (struct bnxt*) ; 
 struct bnxt* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct bnxt *bp = FUNC4(dev);
	struct bnxt_vnic_info *vnic;
	bool mc_update = false;
	bool uc_update;
	u32 mask;

	if (!FUNC6(BNXT_STATE_OPEN, &bp->state))
		return;

	vnic = &bp->vnic_info[0];
	mask = vnic->rx_mask;
	mask &= ~(CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS |
		  CFA_L2_SET_RX_MASK_REQ_MASK_MCAST |
		  CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST |
		  CFA_L2_SET_RX_MASK_REQ_MASK_BCAST);

	if ((dev->flags & IFF_PROMISC) && FUNC1(bp))
		mask |= CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS;

	uc_update = FUNC3(bp);

	if (dev->flags & IFF_BROADCAST)
		mask |= CFA_L2_SET_RX_MASK_REQ_MASK_BCAST;
	if (dev->flags & IFF_ALLMULTI) {
		mask |= CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST;
		vnic->mc_list_count = 0;
	} else {
		mc_update = FUNC0(bp, &mask);
	}

	if (mask != vnic->rx_mask || uc_update || mc_update) {
		vnic->rx_mask = mask;

		FUNC5(BNXT_RX_MASK_SP_EVENT, &bp->sp_event);
		FUNC2(bp);
	}
}