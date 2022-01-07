
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_vsi {scalar_t__ type; void* tx_rings; void* rx_rings; void* txq_map; void* rxq_map; void* q_vectors; int num_q_vectors; int alloc_rxq; int alloc_txq; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ ICE_VSI_LB ;
 void* devm_kcalloc (int *,int ,int,int ) ;
 int devm_kfree (int *,void*) ;

__attribute__((used)) static int ice_vsi_alloc_arrays(struct ice_vsi *vsi)
{
 struct ice_pf *pf = vsi->back;


 vsi->tx_rings = devm_kcalloc(&pf->pdev->dev, vsi->alloc_txq,
         sizeof(*vsi->tx_rings), GFP_KERNEL);
 if (!vsi->tx_rings)
  return -ENOMEM;

 vsi->rx_rings = devm_kcalloc(&pf->pdev->dev, vsi->alloc_rxq,
         sizeof(*vsi->rx_rings), GFP_KERNEL);
 if (!vsi->rx_rings)
  goto err_rings;

 vsi->txq_map = devm_kcalloc(&pf->pdev->dev, vsi->alloc_txq,
        sizeof(*vsi->txq_map), GFP_KERNEL);

 if (!vsi->txq_map)
  goto err_txq_map;

 vsi->rxq_map = devm_kcalloc(&pf->pdev->dev, vsi->alloc_rxq,
        sizeof(*vsi->rxq_map), GFP_KERNEL);
 if (!vsi->rxq_map)
  goto err_rxq_map;



 if (vsi->type == ICE_VSI_LB)
  return 0;


 vsi->q_vectors = devm_kcalloc(&pf->pdev->dev, vsi->num_q_vectors,
          sizeof(*vsi->q_vectors), GFP_KERNEL);
 if (!vsi->q_vectors)
  goto err_vectors;

 return 0;

err_vectors:
 devm_kfree(&pf->pdev->dev, vsi->rxq_map);
err_rxq_map:
 devm_kfree(&pf->pdev->dev, vsi->txq_map);
err_txq_map:
 devm_kfree(&pf->pdev->dev, vsi->rx_rings);
err_rings:
 devm_kfree(&pf->pdev->dev, vsi->tx_rings);
 return -ENOMEM;
}
