
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct hns3_nic_ring_data {TYPE_6__* ring; } ;
struct hns3_nic_priv {struct hns3_nic_ring_data* ring_data; } ;
struct TYPE_7__ {int num_tqps; } ;
struct hnae3_handle {TYPE_4__* pdev; TYPE_3__* ae_algo; TYPE_1__ kinfo; struct hns3_nic_priv* priv; } ;
struct TYPE_12__ {TYPE_5__* tqp_vector; } ;
struct TYPE_11__ {int vector_irq; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {TYPE_2__* ops; } ;
struct TYPE_8__ {int (* get_global_queue_id ) (struct hnae3_handle*,int) ;} ;


 int EOPNOTSUPP ;
 int dev_info (int *,char*,...) ;
 int stub1 (struct hnae3_handle*,int) ;

__attribute__((used)) static int hns3_dbg_queue_map(struct hnae3_handle *h)
{
 struct hns3_nic_priv *priv = h->priv;
 struct hns3_nic_ring_data *ring_data;
 int i;

 if (!h->ae_algo->ops->get_global_queue_id)
  return -EOPNOTSUPP;

 dev_info(&h->pdev->dev, "map info for queue id and vector id\n");
 dev_info(&h->pdev->dev,
   "local queue id | global queue id | vector id\n");
 for (i = 0; i < h->kinfo.num_tqps; i++) {
  u16 global_qid;

  global_qid = h->ae_algo->ops->get_global_queue_id(h, i);
  ring_data = &priv->ring_data[i];
  if (!ring_data || !ring_data->ring ||
      !ring_data->ring->tqp_vector)
   continue;

  dev_info(&h->pdev->dev,
    "      %4d            %4d            %4d\n",
    i, global_qid,
    ring_data->ring->tqp_vector->vector_irq);
 }

 return 0;
}
