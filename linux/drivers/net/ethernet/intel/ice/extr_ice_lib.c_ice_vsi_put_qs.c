
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {int alloc_txq; int alloc_rxq; void** rxq_map; void** txq_map; struct ice_pf* back; } ;
struct ice_pf {int avail_q_mutex; int avail_rxqs; int avail_txqs; } ;


 void* ICE_INVAL_Q_INDEX ;
 int clear_bit (void*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ice_vsi_put_qs(struct ice_vsi *vsi)
{
 struct ice_pf *pf = vsi->back;
 int i;

 mutex_lock(&pf->avail_q_mutex);

 for (i = 0; i < vsi->alloc_txq; i++) {
  clear_bit(vsi->txq_map[i], pf->avail_txqs);
  vsi->txq_map[i] = ICE_INVAL_Q_INDEX;
 }

 for (i = 0; i < vsi->alloc_rxq; i++) {
  clear_bit(vsi->rxq_map[i], pf->avail_rxqs);
  vsi->rxq_map[i] = ICE_INVAL_Q_INDEX;
 }

 mutex_unlock(&pf->avail_q_mutex);
}
