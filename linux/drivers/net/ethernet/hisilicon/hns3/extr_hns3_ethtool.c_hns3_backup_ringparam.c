
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns3_nic_priv {TYPE_1__* ring_data; struct hnae3_handle* ae_handle; } ;
struct hns3_enet_ring {int * skb; } ;
struct TYPE_4__ {int num_tqps; } ;
struct hnae3_handle {TYPE_2__ kinfo; } ;
struct TYPE_3__ {int ring; } ;


 int GFP_KERNEL ;
 struct hns3_enet_ring* kcalloc (int,int,int ) ;
 int memcpy (struct hns3_enet_ring*,int ,int) ;

__attribute__((used)) static struct hns3_enet_ring *hns3_backup_ringparam(struct hns3_nic_priv *priv)
{
 struct hnae3_handle *handle = priv->ae_handle;
 struct hns3_enet_ring *tmp_rings;
 int i;

 tmp_rings = kcalloc(handle->kinfo.num_tqps * 2,
       sizeof(struct hns3_enet_ring), GFP_KERNEL);
 if (!tmp_rings)
  return ((void*)0);

 for (i = 0; i < handle->kinfo.num_tqps * 2; i++) {
  memcpy(&tmp_rings[i], priv->ring_data[i].ring,
         sizeof(struct hns3_enet_ring));
  tmp_rings[i].skb = ((void*)0);
 }

 return tmp_rings;
}
