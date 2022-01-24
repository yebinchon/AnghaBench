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
struct ice_vsi {scalar_t__ type; void* tx_rings; void* rx_rings; void* txq_map; void* rxq_map; void* q_vectors; int /*<<< orphan*/  num_q_vectors; int /*<<< orphan*/  alloc_rxq; int /*<<< orphan*/  alloc_txq; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ ICE_VSI_LB ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC2(struct ice_vsi *vsi)
{
	struct ice_pf *pf = vsi->back;

	/* allocate memory for both Tx and Rx ring pointers */
	vsi->tx_rings = FUNC0(&pf->pdev->dev, vsi->alloc_txq,
				     sizeof(*vsi->tx_rings), GFP_KERNEL);
	if (!vsi->tx_rings)
		return -ENOMEM;

	vsi->rx_rings = FUNC0(&pf->pdev->dev, vsi->alloc_rxq,
				     sizeof(*vsi->rx_rings), GFP_KERNEL);
	if (!vsi->rx_rings)
		goto err_rings;

	vsi->txq_map = FUNC0(&pf->pdev->dev, vsi->alloc_txq,
				    sizeof(*vsi->txq_map), GFP_KERNEL);

	if (!vsi->txq_map)
		goto err_txq_map;

	vsi->rxq_map = FUNC0(&pf->pdev->dev, vsi->alloc_rxq,
				    sizeof(*vsi->rxq_map), GFP_KERNEL);
	if (!vsi->rxq_map)
		goto err_rxq_map;


	/* There is no need to allocate q_vectors for a loopback VSI. */
	if (vsi->type == ICE_VSI_LB)
		return 0;

	/* allocate memory for q_vector pointers */
	vsi->q_vectors = FUNC0(&pf->pdev->dev, vsi->num_q_vectors,
				      sizeof(*vsi->q_vectors), GFP_KERNEL);
	if (!vsi->q_vectors)
		goto err_vectors;

	return 0;

err_vectors:
	FUNC1(&pf->pdev->dev, vsi->rxq_map);
err_rxq_map:
	FUNC1(&pf->pdev->dev, vsi->txq_map);
err_txq_map:
	FUNC1(&pf->pdev->dev, vsi->rx_rings);
err_rings:
	FUNC1(&pf->pdev->dev, vsi->tx_rings);
	return -ENOMEM;
}