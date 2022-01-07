
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct hns3_nic_priv {int vector_num; struct hns3_enet_tqp_vector* tqp_vector; TYPE_1__* ae_handle; } ;
struct hns3_enet_tqp_vector {int affinity_mask; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int cpumask_local_spread (int,int) ;
 int cpumask_set_cpu (int ,int *) ;
 int dev_to_node (int *) ;

__attribute__((used)) static void hns3_nic_set_cpumask(struct hns3_nic_priv *priv)
{
 struct pci_dev *pdev = priv->ae_handle->pdev;
 struct hns3_enet_tqp_vector *tqp_vector;
 int num_vectors = priv->vector_num;
 int numa_node;
 int vector_i;

 numa_node = dev_to_node(&pdev->dev);

 for (vector_i = 0; vector_i < num_vectors; vector_i++) {
  tqp_vector = &priv->tqp_vector[vector_i];
  cpumask_set_cpu(cpumask_local_spread(vector_i, numa_node),
    &tqp_vector->affinity_mask);
 }
}
