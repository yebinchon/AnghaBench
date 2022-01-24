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
struct net_device {int dummy; } ;
struct i40e_vsi {size_t num_queue_pairs; struct i40e_ring** xdp_rings; int /*<<< orphan*/  state; } ;
struct i40e_ring {TYPE_1__* q_vector; int /*<<< orphan*/  xsk_umem; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int ENXIO ; 
 int /*<<< orphan*/  __I40E_VSI_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_vsi*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct i40e_netdev_priv* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct net_device *dev, u32 queue_id, u32 flags)
{
	struct i40e_netdev_priv *np = FUNC3(dev);
	struct i40e_vsi *vsi = np->vsi;
	struct i40e_ring *ring;

	if (FUNC4(__I40E_VSI_DOWN, vsi->state))
		return -ENETDOWN;

	if (!FUNC0(vsi))
		return -ENXIO;

	if (queue_id >= vsi->num_queue_pairs)
		return -ENXIO;

	if (!vsi->xdp_rings[queue_id]->xsk_umem)
		return -ENXIO;

	ring = vsi->xdp_rings[queue_id];

	/* The idea here is that if NAPI is running, mark a miss, so
	 * it will run again. If not, trigger an interrupt and
	 * schedule the NAPI from interrupt context. If NAPI would be
	 * scheduled here, the interrupt affinity would not be
	 * honored.
	 */
	if (!FUNC2(&ring->q_vector->napi))
		FUNC1(vsi, ring->q_vector);

	return 0;
}