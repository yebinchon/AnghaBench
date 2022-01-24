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
struct ice_vsi {int alloc_txq; int alloc_rxq; void** rxq_map; void** txq_map; struct ice_pf* back; } ;
struct ice_pf {int /*<<< orphan*/  avail_q_mutex; int /*<<< orphan*/  avail_rxqs; int /*<<< orphan*/  avail_txqs; } ;

/* Variables and functions */
 void* ICE_INVAL_Q_INDEX ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ice_vsi *vsi)
{
	struct ice_pf *pf = vsi->back;
	int i;

	FUNC1(&pf->avail_q_mutex);

	for (i = 0; i < vsi->alloc_txq; i++) {
		FUNC0(vsi->txq_map[i], pf->avail_txqs);
		vsi->txq_map[i] = ICE_INVAL_Q_INDEX;
	}

	for (i = 0; i < vsi->alloc_rxq; i++) {
		FUNC0(vsi->rxq_map[i], pf->avail_rxqs);
		vsi->rxq_map[i] = ICE_INVAL_Q_INDEX;
	}

	FUNC2(&pf->avail_q_mutex);
}