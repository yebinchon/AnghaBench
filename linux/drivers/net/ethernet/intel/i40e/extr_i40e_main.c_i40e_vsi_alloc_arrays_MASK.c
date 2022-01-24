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
struct i40e_vsi {int alloc_queue_pairs; int num_q_vectors; struct i40e_ring** tx_rings; void* q_vectors; struct i40e_ring** rx_rings; struct i40e_ring** xdp_rings; } ;
struct i40e_ring {int dummy; } ;
struct i40e_q_vector {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_ring**) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i40e_vsi *vsi, bool alloc_qvectors)
{
	struct i40e_ring **next_rings;
	int size;
	int ret = 0;

	/* allocate memory for both Tx, XDP Tx and Rx ring pointers */
	size = sizeof(struct i40e_ring *) * vsi->alloc_queue_pairs *
	       (FUNC0(vsi) ? 3 : 2);
	vsi->tx_rings = FUNC2(size, GFP_KERNEL);
	if (!vsi->tx_rings)
		return -ENOMEM;
	next_rings = vsi->tx_rings + vsi->alloc_queue_pairs;
	if (FUNC0(vsi)) {
		vsi->xdp_rings = next_rings;
		next_rings += vsi->alloc_queue_pairs;
	}
	vsi->rx_rings = next_rings;

	if (alloc_qvectors) {
		/* allocate memory for q_vector pointers */
		size = sizeof(struct i40e_q_vector *) * vsi->num_q_vectors;
		vsi->q_vectors = FUNC2(size, GFP_KERNEL);
		if (!vsi->q_vectors) {
			ret = -ENOMEM;
			goto err_vectors;
		}
	}
	return ret;

err_vectors:
	FUNC1(vsi->tx_rings);
	return ret;
}