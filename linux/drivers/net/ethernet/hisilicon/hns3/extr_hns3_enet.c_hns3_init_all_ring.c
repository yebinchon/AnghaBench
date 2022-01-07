
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hns3_nic_priv {TYPE_1__* ring_data; int dev; struct hnae3_handle* ae_handle; } ;
struct TYPE_6__ {int num_tqps; } ;
struct hnae3_handle {TYPE_2__ kinfo; } ;
struct TYPE_7__ {int syncp; } ;
struct TYPE_5__ {TYPE_3__* ring; } ;


 int ENOMEM ;
 int dev_err (int ,char*,int) ;
 int hns3_alloc_ring_memory (TYPE_3__*) ;
 int hns3_fini_ring (TYPE_3__*) ;
 int u64_stats_init (int *) ;

int hns3_init_all_ring(struct hns3_nic_priv *priv)
{
 struct hnae3_handle *h = priv->ae_handle;
 int ring_num = h->kinfo.num_tqps * 2;
 int i, j;
 int ret;

 for (i = 0; i < ring_num; i++) {
  ret = hns3_alloc_ring_memory(priv->ring_data[i].ring);
  if (ret) {
   dev_err(priv->dev,
    "Alloc ring memory fail! ret=%d\n", ret);
   goto out_when_alloc_ring_memory;
  }

  u64_stats_init(&priv->ring_data[i].ring->syncp);
 }

 return 0;

out_when_alloc_ring_memory:
 for (j = i - 1; j >= 0; j--)
  hns3_fini_ring(priv->ring_data[j].ring);

 return -ENOMEM;
}
