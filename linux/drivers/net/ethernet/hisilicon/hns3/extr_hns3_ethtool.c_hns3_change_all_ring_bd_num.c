
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct hns3_nic_priv {TYPE_2__* ring_data; struct hnae3_handle* ae_handle; } ;
struct TYPE_6__ {int num_tqps; void* num_rx_desc; void* num_tx_desc; } ;
struct hnae3_handle {TYPE_3__ kinfo; } ;
struct TYPE_5__ {TYPE_1__* ring; } ;
struct TYPE_4__ {void* desc_num; } ;



__attribute__((used)) static void hns3_change_all_ring_bd_num(struct hns3_nic_priv *priv,
     u32 tx_desc_num, u32 rx_desc_num)
{
 struct hnae3_handle *h = priv->ae_handle;
 int i;

 h->kinfo.num_tx_desc = tx_desc_num;
 h->kinfo.num_rx_desc = rx_desc_num;

 for (i = 0; i < h->kinfo.num_tqps; i++) {
  priv->ring_data[i].ring->desc_num = tx_desc_num;
  priv->ring_data[i + h->kinfo.num_tqps].ring->desc_num =
   rx_desc_num;
 }
}
