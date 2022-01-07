
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct hns3_nic_priv {int vector_num; struct hns3_enet_tqp_vector* tqp_vector; struct hnae3_handle* ae_handle; } ;
struct hns3_enet_tqp_vector {int vector_irq; } ;
struct hnae3_handle {TYPE_2__* ae_algo; struct pci_dev* pdev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* put_vector ) (struct hnae3_handle*,int ) ;} ;


 int devm_kfree (int *,struct hns3_enet_tqp_vector*) ;
 int stub1 (struct hnae3_handle*,int ) ;

__attribute__((used)) static int hns3_nic_dealloc_vector_data(struct hns3_nic_priv *priv)
{
 struct hnae3_handle *h = priv->ae_handle;
 struct pci_dev *pdev = h->pdev;
 int i, ret;

 for (i = 0; i < priv->vector_num; i++) {
  struct hns3_enet_tqp_vector *tqp_vector;

  tqp_vector = &priv->tqp_vector[i];
  ret = h->ae_algo->ops->put_vector(h, tqp_vector->vector_irq);
  if (ret)
   return ret;
 }

 devm_kfree(&pdev->dev, priv->tqp_vector);
 return 0;
}
