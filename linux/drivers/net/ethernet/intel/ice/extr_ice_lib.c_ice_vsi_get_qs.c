
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {void* rx_mapping_mode; void* tx_mapping_mode; int rxq_map; int alloc_rxq; int txq_map; int alloc_txq; struct ice_pf* back; } ;
struct ice_qs_cfg {void* mapping_mode; int vsi_map_offset; int vsi_map; int scatter_count; int q_count; int pf_map_size; int pf_map; int * qs_mutex; } ;
struct ice_pf {int max_pf_rxqs; int avail_rxqs; int avail_q_mutex; int max_pf_txqs; int avail_txqs; } ;


 int ICE_MAX_SCATTER_RXQS ;
 int ICE_MAX_SCATTER_TXQS ;
 void* ICE_VSI_MAP_CONTIG ;
 int __ice_vsi_get_qs (struct ice_qs_cfg*) ;

__attribute__((used)) static int ice_vsi_get_qs(struct ice_vsi *vsi)
{
 struct ice_pf *pf = vsi->back;
 struct ice_qs_cfg tx_qs_cfg = {
  .qs_mutex = &pf->avail_q_mutex,
  .pf_map = pf->avail_txqs,
  .pf_map_size = pf->max_pf_txqs,
  .q_count = vsi->alloc_txq,
  .scatter_count = ICE_MAX_SCATTER_TXQS,
  .vsi_map = vsi->txq_map,
  .vsi_map_offset = 0,
  .mapping_mode = vsi->tx_mapping_mode
 };
 struct ice_qs_cfg rx_qs_cfg = {
  .qs_mutex = &pf->avail_q_mutex,
  .pf_map = pf->avail_rxqs,
  .pf_map_size = pf->max_pf_rxqs,
  .q_count = vsi->alloc_rxq,
  .scatter_count = ICE_MAX_SCATTER_RXQS,
  .vsi_map = vsi->rxq_map,
  .vsi_map_offset = 0,
  .mapping_mode = vsi->rx_mapping_mode
 };
 int ret = 0;

 vsi->tx_mapping_mode = ICE_VSI_MAP_CONTIG;
 vsi->rx_mapping_mode = ICE_VSI_MAP_CONTIG;

 ret = __ice_vsi_get_qs(&tx_qs_cfg);
 if (!ret)
  ret = __ice_vsi_get_qs(&rx_qs_cfg);

 return ret;
}
