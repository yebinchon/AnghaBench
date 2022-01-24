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
struct netdev_queue {unsigned long trans_start; } ;
struct net_device {size_t num_tx_queues; scalar_t__ watchdog_timeo; } ;
struct ice_vsi {size_t num_txq; int /*<<< orphan*/  state; int /*<<< orphan*/  vsi_num; int /*<<< orphan*/ * txq_map; struct ice_ring** tx_rings; struct ice_pf* back; } ;
struct ice_ring {int q_index; int /*<<< orphan*/  next_to_use; int /*<<< orphan*/  next_to_clean; TYPE_1__* q_vector; scalar_t__ desc; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {int tx_timeout_recovery_level; int /*<<< orphan*/  state; scalar_t__ tx_timeout_last_recovery; struct ice_hw hw; int /*<<< orphan*/  tx_timeout_count; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t QTX_COMM_HEAD_HEAD_M ; 
 size_t QTX_COMM_HEAD_HEAD_S ; 
 int /*<<< orphan*/  __ICE_CORER_REQ ; 
 int /*<<< orphan*/  __ICE_DOWN ; 
 int /*<<< orphan*/  __ICE_GLOBR_REQ ; 
 int /*<<< orphan*/  __ICE_NEEDS_RESTART ; 
 int /*<<< orphan*/  __ICE_PFR_REQ ; 
 int /*<<< orphan*/  __ICE_SERVICE_DIS ; 
 int /*<<< orphan*/  FUNC2 (struct ice_pf*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct netdev_queue* FUNC4 (struct net_device*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,...) ; 
 struct ice_netdev_priv* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct netdev_queue*) ; 
 size_t FUNC8 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct net_device *netdev)
{
	struct ice_netdev_priv *np = FUNC6(netdev);
	struct ice_ring *tx_ring = NULL;
	struct ice_vsi *vsi = np->vsi;
	struct ice_pf *pf = vsi->back;
	int hung_queue = -1;
	u32 i;

	pf->tx_timeout_count++;

	/* find the stopped queue the same way dev_watchdog() does */
	for (i = 0; i < netdev->num_tx_queues; i++) {
		unsigned long trans_start;
		struct netdev_queue *q;

		q = FUNC4(netdev, i);
		trans_start = q->trans_start;
		if (FUNC7(q) &&
		    FUNC10(jiffies,
			       trans_start + netdev->watchdog_timeo)) {
			hung_queue = i;
			break;
		}
	}

	if (i == netdev->num_tx_queues)
		FUNC5(netdev, "tx_timeout: no netdev hung queue found\n");
	else
		/* now that we have an index, find the tx_ring struct */
		for (i = 0; i < vsi->num_txq; i++)
			if (vsi->tx_rings[i] && vsi->tx_rings[i]->desc)
				if (hung_queue == vsi->tx_rings[i]->q_index) {
					tx_ring = vsi->tx_rings[i];
					break;
				}

	/* Reset recovery level if enough time has elapsed after last timeout.
	 * Also ensure no new reset action happens before next timeout period.
	 */
	if (FUNC10(jiffies, (pf->tx_timeout_last_recovery + HZ * 20)))
		pf->tx_timeout_recovery_level = 1;
	else if (FUNC11(jiffies, (pf->tx_timeout_last_recovery +
				       netdev->watchdog_timeo)))
		return;

	if (tx_ring) {
		struct ice_hw *hw = &pf->hw;
		u32 head, val = 0;

		head = (FUNC8(hw, FUNC1(vsi->txq_map[hung_queue])) &
			QTX_COMM_HEAD_HEAD_M) >> QTX_COMM_HEAD_HEAD_S;
		/* Read interrupt register */
		val = FUNC8(hw, FUNC0(tx_ring->q_vector->reg_idx));

		FUNC5(netdev, "tx_timeout: VSI_num: %d, Q %d, NTC: 0x%x, HW_HEAD: 0x%x, NTU: 0x%x, INT: 0x%x\n",
			    vsi->vsi_num, hung_queue, tx_ring->next_to_clean,
			    head, tx_ring->next_to_use, val);
	}

	pf->tx_timeout_last_recovery = jiffies;
	FUNC5(netdev, "tx_timeout recovery level %d, hung_queue %d\n",
		    pf->tx_timeout_recovery_level, hung_queue);

	switch (pf->tx_timeout_recovery_level) {
	case 1:
		FUNC9(__ICE_PFR_REQ, pf->state);
		break;
	case 2:
		FUNC9(__ICE_CORER_REQ, pf->state);
		break;
	case 3:
		FUNC9(__ICE_GLOBR_REQ, pf->state);
		break;
	default:
		FUNC3(netdev, "tx_timeout recovery unsuccessful, device is in unrecoverable state.\n");
		FUNC9(__ICE_DOWN, pf->state);
		FUNC9(__ICE_NEEDS_RESTART, vsi->state);
		FUNC9(__ICE_SERVICE_DIS, pf->state);
		break;
	}

	FUNC2(pf);
	pf->tx_timeout_recovery_level++;
}