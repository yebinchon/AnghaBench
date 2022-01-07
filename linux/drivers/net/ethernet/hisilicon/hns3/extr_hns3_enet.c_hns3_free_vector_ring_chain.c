
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct hns3_enet_tqp_vector {TYPE_1__* handle; } ;
struct hnae3_ring_chain_node {struct hnae3_ring_chain_node* next; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int devm_kfree (int *,struct hnae3_ring_chain_node*) ;

__attribute__((used)) static void hns3_free_vector_ring_chain(struct hns3_enet_tqp_vector *tqp_vector,
     struct hnae3_ring_chain_node *head)
{
 struct pci_dev *pdev = tqp_vector->handle->pdev;
 struct hnae3_ring_chain_node *chain_tmp, *chain;

 chain = head->next;

 while (chain) {
  chain_tmp = chain->next;
  devm_kfree(&pdev->dev, chain);
  chain = chain_tmp;
 }
}
