
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns3_nic_priv {TYPE_1__* ring_data; struct hnae3_handle* ae_handle; } ;
struct TYPE_4__ {int num_tqps; } ;
struct hnae3_handle {TYPE_2__ kinfo; } ;
struct TYPE_3__ {int ring; } ;


 int hns3_fini_ring (int ) ;

int hns3_uninit_all_ring(struct hns3_nic_priv *priv)
{
 struct hnae3_handle *h = priv->ae_handle;
 int i;

 for (i = 0; i < h->kinfo.num_tqps; i++) {
  hns3_fini_ring(priv->ring_data[i].ring);
  hns3_fini_ring(priv->ring_data[i + h->kinfo.num_tqps].ring);
 }
 return 0;
}
