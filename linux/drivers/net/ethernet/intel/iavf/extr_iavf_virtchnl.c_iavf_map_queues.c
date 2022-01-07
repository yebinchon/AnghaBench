
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_vector_map {scalar_t__ rxq_map; scalar_t__ txq_map; void* vector_id; int vsi_id; int txitr_idx; int rxitr_idx; } ;
struct virtchnl_irq_map_info {void* num_vectors; struct virtchnl_vector_map* vecmap; } ;
struct iavf_q_vector {scalar_t__ ring_mask; } ;
struct iavf_adapter {scalar_t__ current_op; void* num_msix_vectors; int aq_required; TYPE_2__* vsi_res; struct iavf_q_vector* q_vectors; TYPE_1__* pdev; } ;
struct TYPE_4__ {int vsi_id; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_KERNEL ;
 int IAVF_FLAG_AQ_MAP_VECTORS ;
 int IAVF_RX_ITR ;
 int IAVF_TX_ITR ;
 void* NONQ_VECS ;
 scalar_t__ VIRTCHNL_OP_CONFIG_IRQ_MAP ;
 scalar_t__ VIRTCHNL_OP_UNKNOWN ;
 int dev_err (int *,char*,scalar_t__) ;
 int iavf_send_pf_msg (struct iavf_adapter*,scalar_t__,int *,size_t) ;
 int kfree (struct virtchnl_irq_map_info*) ;
 struct virtchnl_irq_map_info* kzalloc (size_t,int ) ;
 size_t struct_size (struct virtchnl_irq_map_info*,struct virtchnl_vector_map*,void*) ;

void iavf_map_queues(struct iavf_adapter *adapter)
{
 struct virtchnl_irq_map_info *vimi;
 struct virtchnl_vector_map *vecmap;
 struct iavf_q_vector *q_vector;
 int v_idx, q_vectors;
 size_t len;

 if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {

  dev_err(&adapter->pdev->dev, "Cannot map queues to vectors, command %d pending\n",
   adapter->current_op);
  return;
 }
 adapter->current_op = VIRTCHNL_OP_CONFIG_IRQ_MAP;

 q_vectors = adapter->num_msix_vectors - NONQ_VECS;

 len = struct_size(vimi, vecmap, adapter->num_msix_vectors);
 vimi = kzalloc(len, GFP_KERNEL);
 if (!vimi)
  return;

 vimi->num_vectors = adapter->num_msix_vectors;

 for (v_idx = 0; v_idx < q_vectors; v_idx++) {
  q_vector = &adapter->q_vectors[v_idx];
  vecmap = &vimi->vecmap[v_idx];

  vecmap->vsi_id = adapter->vsi_res->vsi_id;
  vecmap->vector_id = v_idx + NONQ_VECS;
  vecmap->txq_map = q_vector->ring_mask;
  vecmap->rxq_map = q_vector->ring_mask;
  vecmap->rxitr_idx = IAVF_RX_ITR;
  vecmap->txitr_idx = IAVF_TX_ITR;
 }

 vecmap = &vimi->vecmap[v_idx];
 vecmap->vsi_id = adapter->vsi_res->vsi_id;
 vecmap->vector_id = 0;
 vecmap->txq_map = 0;
 vecmap->rxq_map = 0;

 adapter->aq_required &= ~IAVF_FLAG_AQ_MAP_VECTORS;
 iavf_send_pf_msg(adapter, VIRTCHNL_OP_CONFIG_IRQ_MAP,
    (u8 *)vimi, len);
 kfree(vimi);
}
