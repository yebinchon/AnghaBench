
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns3_nic_priv {TYPE_1__* ring_data; int dev; } ;
struct hnae3_queue {size_t tqp_index; } ;
struct TYPE_2__ {int ring; } ;


 int HNAE3_RING_TYPE_RX ;
 int HNAE3_RING_TYPE_TX ;
 int devm_kfree (int ,int ) ;
 int hns3_ring_get_cfg (struct hnae3_queue*,struct hns3_nic_priv*,int ) ;

__attribute__((used)) static int hns3_queue_to_ring(struct hnae3_queue *tqp,
         struct hns3_nic_priv *priv)
{
 int ret;

 ret = hns3_ring_get_cfg(tqp, priv, HNAE3_RING_TYPE_TX);
 if (ret)
  return ret;

 ret = hns3_ring_get_cfg(tqp, priv, HNAE3_RING_TYPE_RX);
 if (ret) {
  devm_kfree(priv->dev, priv->ring_data[tqp->tqp_index].ring);
  return ret;
 }

 return 0;
}
