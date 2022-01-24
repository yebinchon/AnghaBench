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
typedef  int /*<<< orphan*/  u32 ;
struct netdev_queue {unsigned long trans_start; } ;
struct net_device {unsigned int num_tx_queues; scalar_t__ watchdog_timeo; } ;
struct i40e_vsi {unsigned int num_queue_pairs; int /*<<< orphan*/  seid; struct i40e_ring** tx_rings; struct i40e_pf* back; } ;
struct i40e_ring {unsigned int queue_index; int /*<<< orphan*/  tail; int /*<<< orphan*/  next_to_use; int /*<<< orphan*/  next_to_clean; TYPE_2__* vsi; TYPE_1__* q_vector; scalar_t__ desc; } ;
struct i40e_pf {int tx_timeout_recovery_level; int flags; int /*<<< orphan*/  state; scalar_t__ tx_timeout_last_recovery; int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_timeout_count; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct TYPE_4__ {scalar_t__ base_vector; } ;
struct TYPE_3__ {scalar_t__ v_idx; } ;

/* Variables and functions */
 int HZ ; 
 int I40E_FLAG_MSIX_ENABLED ; 
 int /*<<< orphan*/  I40E_PFINT_DYN_CTL0 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  __I40E_CORE_RESET_REQUESTED ; 
 int /*<<< orphan*/  __I40E_GLOBAL_RESET_REQUESTED ; 
 int /*<<< orphan*/  __I40E_PF_RESET_REQUESTED ; 
 int /*<<< orphan*/  __I40E_TIMEOUT_RECOVERY_PENDING ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct netdev_queue* FUNC4 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,...) ; 
 struct i40e_netdev_priv* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct net_device *netdev)
{
	struct i40e_netdev_priv *np = FUNC6(netdev);
	struct i40e_vsi *vsi = np->vsi;
	struct i40e_pf *pf = vsi->back;
	struct i40e_ring *tx_ring = NULL;
	unsigned int i, hung_queue = 0;
	u32 head, val;

	pf->tx_timeout_count++;

	/* find the stopped queue the same way the stack does */
	for (i = 0; i < netdev->num_tx_queues; i++) {
		struct netdev_queue *q;
		unsigned long trans_start;

		q = FUNC4(netdev, i);
		trans_start = q->trans_start;
		if (FUNC7(q) &&
		    FUNC12(jiffies,
			       (trans_start + netdev->watchdog_timeo))) {
			hung_queue = i;
			break;
		}
	}

	if (i == netdev->num_tx_queues) {
		FUNC5(netdev, "tx_timeout: no netdev hung queue found\n");
	} else {
		/* now that we have an index, find the tx_ring struct */
		for (i = 0; i < vsi->num_queue_pairs; i++) {
			if (vsi->tx_rings[i] && vsi->tx_rings[i]->desc) {
				if (hung_queue ==
				    vsi->tx_rings[i]->queue_index) {
					tx_ring = vsi->tx_rings[i];
					break;
				}
			}
		}
	}

	if (FUNC12(jiffies, (pf->tx_timeout_last_recovery + HZ*20)))
		pf->tx_timeout_recovery_level = 1;  /* reset after some time */
	else if (FUNC13(jiffies,
		      (pf->tx_timeout_last_recovery + netdev->watchdog_timeo)))
		return;   /* don't do any new action before the next timeout */

	/* don't kick off another recovery if one is already pending */
	if (FUNC11(__I40E_TIMEOUT_RECOVERY_PENDING, pf->state))
		return;

	if (tx_ring) {
		head = FUNC1(tx_ring);
		/* Read interrupt register */
		if (pf->flags & I40E_FLAG_MSIX_ENABLED)
			val = FUNC8(&pf->hw,
			     FUNC0(tx_ring->q_vector->v_idx +
						tx_ring->vsi->base_vector - 1));
		else
			val = FUNC8(&pf->hw, I40E_PFINT_DYN_CTL0);

		FUNC5(netdev, "tx_timeout: VSI_seid: %d, Q %d, NTC: 0x%x, HWB: 0x%x, NTU: 0x%x, TAIL: 0x%x, INT: 0x%x\n",
			    vsi->seid, hung_queue, tx_ring->next_to_clean,
			    head, tx_ring->next_to_use,
			    FUNC9(tx_ring->tail), val);
	}

	pf->tx_timeout_last_recovery = jiffies;
	FUNC5(netdev, "tx_timeout recovery level %d, hung_queue %d\n",
		    pf->tx_timeout_recovery_level, hung_queue);

	switch (pf->tx_timeout_recovery_level) {
	case 1:
		FUNC10(__I40E_PF_RESET_REQUESTED, pf->state);
		break;
	case 2:
		FUNC10(__I40E_CORE_RESET_REQUESTED, pf->state);
		break;
	case 3:
		FUNC10(__I40E_GLOBAL_RESET_REQUESTED, pf->state);
		break;
	default:
		FUNC3(netdev, "tx_timeout recovery unsuccessful\n");
		break;
	}

	FUNC2(pf);
	pf->tx_timeout_recovery_level++;
}