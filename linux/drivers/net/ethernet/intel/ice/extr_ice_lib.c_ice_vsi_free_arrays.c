
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_vsi {int * rxq_map; int * txq_map; int * rx_rings; int * tx_rings; int * q_vectors; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int devm_kfree (int *,int *) ;

__attribute__((used)) static void ice_vsi_free_arrays(struct ice_vsi *vsi)
{
 struct ice_pf *pf = vsi->back;


 if (vsi->q_vectors) {
  devm_kfree(&pf->pdev->dev, vsi->q_vectors);
  vsi->q_vectors = ((void*)0);
 }
 if (vsi->tx_rings) {
  devm_kfree(&pf->pdev->dev, vsi->tx_rings);
  vsi->tx_rings = ((void*)0);
 }
 if (vsi->rx_rings) {
  devm_kfree(&pf->pdev->dev, vsi->rx_rings);
  vsi->rx_rings = ((void*)0);
 }
 if (vsi->txq_map) {
  devm_kfree(&pf->pdev->dev, vsi->txq_map);
  vsi->txq_map = ((void*)0);
 }
 if (vsi->rxq_map) {
  devm_kfree(&pf->pdev->dev, vsi->rxq_map);
  vsi->rxq_map = ((void*)0);
 }
}
