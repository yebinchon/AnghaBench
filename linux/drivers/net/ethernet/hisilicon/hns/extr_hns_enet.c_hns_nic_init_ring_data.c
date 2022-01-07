
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_nic_ring_data {int queue_index; TYPE_2__* ring; int napi; int fini_process; int ex_process; int poll_one; } ;
struct hns_nic_priv {int netdev; struct hns_nic_ring_data* ring_data; int enet_ver; struct hnae_handle* ae_handle; } ;
struct hnae_handle {int q_num; TYPE_1__** qs; } ;
struct TYPE_4__ {void* irq_init_flag; } ;
struct TYPE_3__ {TYPE_2__ rx_ring; TYPE_2__ tx_ring; } ;


 int AE_IS_VER1 (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NAPI_POLL_WEIGHT ;
 int NIC_MAX_Q_PER_VF ;
 void* RCB_IRQ_NOT_INITED ;
 int array3_size (int,int,int) ;
 int hns_nic_common_poll ;
 int hns_nic_rx_fini_pro ;
 int hns_nic_rx_fini_pro_v2 ;
 int hns_nic_rx_poll_one ;
 int hns_nic_rx_up_pro ;
 int hns_nic_tx_fini_pro ;
 int hns_nic_tx_fini_pro_v2 ;
 int hns_nic_tx_poll_one ;
 struct hns_nic_ring_data* kzalloc (int ,int ) ;
 int netdev_err (int ,char*,int) ;
 int netif_napi_add (int ,int *,int ,int ) ;

__attribute__((used)) static int hns_nic_init_ring_data(struct hns_nic_priv *priv)
{
 struct hnae_handle *h = priv->ae_handle;
 struct hns_nic_ring_data *rd;
 bool is_ver1 = AE_IS_VER1(priv->enet_ver);
 int i;

 if (h->q_num > NIC_MAX_Q_PER_VF) {
  netdev_err(priv->netdev, "too much queue (%d)\n", h->q_num);
  return -EINVAL;
 }

 priv->ring_data = kzalloc(array3_size(h->q_num,
           sizeof(*priv->ring_data), 2),
      GFP_KERNEL);
 if (!priv->ring_data)
  return -ENOMEM;

 for (i = 0; i < h->q_num; i++) {
  rd = &priv->ring_data[i];
  rd->queue_index = i;
  rd->ring = &h->qs[i]->tx_ring;
  rd->poll_one = hns_nic_tx_poll_one;
  rd->fini_process = is_ver1 ? hns_nic_tx_fini_pro :
   hns_nic_tx_fini_pro_v2;

  netif_napi_add(priv->netdev, &rd->napi,
          hns_nic_common_poll, NAPI_POLL_WEIGHT);
  rd->ring->irq_init_flag = RCB_IRQ_NOT_INITED;
 }
 for (i = h->q_num; i < h->q_num * 2; i++) {
  rd = &priv->ring_data[i];
  rd->queue_index = i - h->q_num;
  rd->ring = &h->qs[i - h->q_num]->rx_ring;
  rd->poll_one = hns_nic_rx_poll_one;
  rd->ex_process = hns_nic_rx_up_pro;
  rd->fini_process = is_ver1 ? hns_nic_rx_fini_pro :
   hns_nic_rx_fini_pro_v2;

  netif_napi_add(priv->netdev, &rd->napi,
          hns_nic_common_poll, NAPI_POLL_WEIGHT);
  rd->ring->irq_init_flag = RCB_IRQ_NOT_INITED;
 }

 return 0;
}
