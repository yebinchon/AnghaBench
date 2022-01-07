
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct hns3_nic_priv {TYPE_2__* ring_data; int * dev; struct hnae3_handle* ae_handle; } ;
struct TYPE_4__ {int num_tqps; int * tqp; } ;
struct hnae3_handle {TYPE_1__ kinfo; struct pci_dev* pdev; } ;
struct TYPE_5__ {struct TYPE_5__* ring; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int array3_size (int,int,int) ;
 int devm_kfree (int *,TYPE_2__*) ;
 TYPE_2__* devm_kzalloc (int *,int ,int ) ;
 int hns3_queue_to_ring (int ,struct hns3_nic_priv*) ;

__attribute__((used)) static int hns3_get_ring_config(struct hns3_nic_priv *priv)
{
 struct hnae3_handle *h = priv->ae_handle;
 struct pci_dev *pdev = h->pdev;
 int i, ret;

 priv->ring_data = devm_kzalloc(&pdev->dev,
     array3_size(h->kinfo.num_tqps,
          sizeof(*priv->ring_data),
          2),
     GFP_KERNEL);
 if (!priv->ring_data)
  return -ENOMEM;

 for (i = 0; i < h->kinfo.num_tqps; i++) {
  ret = hns3_queue_to_ring(h->kinfo.tqp[i], priv);
  if (ret)
   goto err;
 }

 return 0;
err:
 while (i--) {
  devm_kfree(priv->dev, priv->ring_data[i].ring);
  devm_kfree(priv->dev,
      priv->ring_data[i + h->kinfo.num_tqps].ring);
 }

 devm_kfree(&pdev->dev, priv->ring_data);
 priv->ring_data = ((void*)0);
 return ret;
}
