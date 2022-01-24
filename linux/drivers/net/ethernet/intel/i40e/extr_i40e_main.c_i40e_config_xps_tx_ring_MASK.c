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
struct i40e_ring {int /*<<< orphan*/  queue_index; int /*<<< orphan*/  netdev; TYPE_1__* q_vector; int /*<<< orphan*/  state; scalar_t__ ch; } ;
struct TYPE_2__ {int /*<<< orphan*/  v_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  __I40E_TX_XPS_INIT_DONE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct i40e_ring *ring)
{
	int cpu;

	if (!ring->q_vector || !ring->netdev || ring->ch)
		return;

	/* We only initialize XPS once, so as not to overwrite user settings */
	if (FUNC3(__I40E_TX_XPS_INIT_DONE, ring->state))
		return;

	cpu = FUNC0(ring->q_vector->v_idx, -1);
	FUNC2(ring->netdev, FUNC1(cpu),
			    ring->queue_index);
}