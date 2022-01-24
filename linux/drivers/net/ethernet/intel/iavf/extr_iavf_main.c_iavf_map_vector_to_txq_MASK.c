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
struct iavf_ring {int /*<<< orphan*/  itr_setting; int /*<<< orphan*/ * vsi; struct iavf_ring* next; struct iavf_q_vector* q_vector; } ;
struct TYPE_2__ {int target_itr; int current_itr; scalar_t__ next_update; int /*<<< orphan*/  count; struct iavf_ring* ring; } ;
struct iavf_q_vector {TYPE_1__ tx; int /*<<< orphan*/  reg_idx; int /*<<< orphan*/  num_ringpairs; } ;
struct iavf_hw {int dummy; } ;
struct iavf_adapter {int /*<<< orphan*/  vsi; struct iavf_hw hw; struct iavf_ring* tx_rings; struct iavf_q_vector* q_vectors; } ;

/* Variables and functions */
 int /*<<< orphan*/  IAVF_TX_ITR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct iavf_adapter *adapter, int v_idx, int t_idx)
{
	struct iavf_q_vector *q_vector = &adapter->q_vectors[v_idx];
	struct iavf_ring *tx_ring = &adapter->tx_rings[t_idx];
	struct iavf_hw *hw = &adapter->hw;

	tx_ring->q_vector = q_vector;
	tx_ring->next = q_vector->tx.ring;
	tx_ring->vsi = &adapter->vsi;
	q_vector->tx.ring = tx_ring;
	q_vector->tx.count++;
	q_vector->tx.next_update = jiffies + 1;
	q_vector->tx.target_itr = FUNC1(tx_ring->itr_setting);
	q_vector->num_ringpairs++;
	FUNC2(hw, FUNC0(IAVF_TX_ITR, q_vector->reg_idx),
	     q_vector->tx.target_itr >> 1);
	q_vector->tx.current_itr = q_vector->tx.target_itr;
}