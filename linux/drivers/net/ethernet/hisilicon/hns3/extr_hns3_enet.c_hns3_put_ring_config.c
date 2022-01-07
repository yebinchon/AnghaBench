
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns3_nic_priv {TYPE_2__* ring_data; int dev; struct hnae3_handle* ae_handle; } ;
struct TYPE_3__ {int num_tqps; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;
struct TYPE_4__ {struct TYPE_4__* ring; } ;


 int devm_kfree (int ,TYPE_2__*) ;

__attribute__((used)) static void hns3_put_ring_config(struct hns3_nic_priv *priv)
{
 struct hnae3_handle *h = priv->ae_handle;
 int i;

 if (!priv->ring_data)
  return;

 for (i = 0; i < h->kinfo.num_tqps; i++) {
  devm_kfree(priv->dev, priv->ring_data[i].ring);
  devm_kfree(priv->dev,
      priv->ring_data[i + h->kinfo.num_tqps].ring);
 }
 devm_kfree(priv->dev, priv->ring_data);
 priv->ring_data = ((void*)0);
}
