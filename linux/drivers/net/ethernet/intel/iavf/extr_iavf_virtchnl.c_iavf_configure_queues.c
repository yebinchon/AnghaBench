
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_vsi_queue_config_info {int num_queue_pairs; int vsi_id; struct virtchnl_queue_pair_info* qpair; } ;
struct TYPE_13__ {int queue_id; int max_pkt_size; int databuffer_size; int dma_ring_addr; int ring_len; int vsi_id; } ;
struct TYPE_11__ {int queue_id; int dma_ring_addr; int ring_len; int vsi_id; } ;
struct virtchnl_queue_pair_info {TYPE_6__ rxq; TYPE_4__ txq; } ;
struct iavf_adapter {int num_active_queues; scalar_t__ current_op; int flags; int aq_required; TYPE_7__* rx_rings; TYPE_5__* tx_rings; TYPE_3__* vsi_res; TYPE_2__* netdev; TYPE_1__* pdev; } ;
struct TYPE_14__ {int rx_buf_len; int dma; int count; } ;
struct TYPE_12__ {int dma; int count; } ;
struct TYPE_10__ {int vsi_id; } ;
struct TYPE_9__ {scalar_t__ mtu; } ;
struct TYPE_8__ {int dev; } ;


 int ALIGN (int ,int ) ;
 int BIT_ULL (int ) ;
 scalar_t__ ETH_DATA_LEN ;
 int GFP_KERNEL ;
 int IAVF_FLAG_AQ_CONFIGURE_QUEUES ;
 int IAVF_FLAG_LEGACY_RX ;
 int IAVF_MAX_RXBUFFER ;
 int IAVF_RXBUFFER_1536 ;
 int IAVF_RXQ_CTX_DBUFF_SHIFT ;
 int NET_IP_ALIGN ;
 scalar_t__ VIRTCHNL_OP_CONFIG_VSI_QUEUES ;
 scalar_t__ VIRTCHNL_OP_UNKNOWN ;
 int dev_err (int *,char*,scalar_t__) ;
 int iavf_send_pf_msg (struct iavf_adapter*,scalar_t__,int *,size_t) ;
 int kfree (struct virtchnl_vsi_queue_config_info*) ;
 struct virtchnl_vsi_queue_config_info* kzalloc (size_t,int ) ;
 int qpair ;
 size_t struct_size (struct virtchnl_vsi_queue_config_info*,int ,int) ;

void iavf_configure_queues(struct iavf_adapter *adapter)
{
 struct virtchnl_vsi_queue_config_info *vqci;
 struct virtchnl_queue_pair_info *vqpi;
 int pairs = adapter->num_active_queues;
 int i, max_frame = IAVF_MAX_RXBUFFER;
 size_t len;

 if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {

  dev_err(&adapter->pdev->dev, "Cannot configure queues, command %d pending\n",
   adapter->current_op);
  return;
 }
 adapter->current_op = VIRTCHNL_OP_CONFIG_VSI_QUEUES;
 len = struct_size(vqci, qpair, pairs);
 vqci = kzalloc(len, GFP_KERNEL);
 if (!vqci)
  return;


 if (!(adapter->flags & IAVF_FLAG_LEGACY_RX) &&
     (adapter->netdev->mtu <= ETH_DATA_LEN))
  max_frame = IAVF_RXBUFFER_1536 - NET_IP_ALIGN;

 vqci->vsi_id = adapter->vsi_res->vsi_id;
 vqci->num_queue_pairs = pairs;
 vqpi = vqci->qpair;



 for (i = 0; i < pairs; i++) {
  vqpi->txq.vsi_id = vqci->vsi_id;
  vqpi->txq.queue_id = i;
  vqpi->txq.ring_len = adapter->tx_rings[i].count;
  vqpi->txq.dma_ring_addr = adapter->tx_rings[i].dma;
  vqpi->rxq.vsi_id = vqci->vsi_id;
  vqpi->rxq.queue_id = i;
  vqpi->rxq.ring_len = adapter->rx_rings[i].count;
  vqpi->rxq.dma_ring_addr = adapter->rx_rings[i].dma;
  vqpi->rxq.max_pkt_size = max_frame;
  vqpi->rxq.databuffer_size =
   ALIGN(adapter->rx_rings[i].rx_buf_len,
         BIT_ULL(IAVF_RXQ_CTX_DBUFF_SHIFT));
  vqpi++;
 }

 adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_QUEUES;
 iavf_send_pf_msg(adapter, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
    (u8 *)vqci, len);
 kfree(vqci);
}
