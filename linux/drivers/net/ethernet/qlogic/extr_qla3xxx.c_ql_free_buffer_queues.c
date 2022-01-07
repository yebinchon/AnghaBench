
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int flags; int * small_buf_q_virt_addr; int small_buf_q_alloc_phy_addr; int small_buf_q_alloc_virt_addr; int small_buf_q_alloc_size; int pdev; int * lrg_buf_q_virt_addr; int lrg_buf_q_alloc_phy_addr; int lrg_buf_q_alloc_virt_addr; int lrg_buf_q_alloc_size; int lrg_buf; int ndev; } ;


 int QL_ALLOC_BUFQS_DONE ;
 int clear_bit (int ,int *) ;
 int kfree (int ) ;
 int netdev_info (int ,char*) ;
 int pci_free_consistent (int ,int ,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ql_free_buffer_queues(struct ql3_adapter *qdev)
{
 if (!test_bit(QL_ALLOC_BUFQS_DONE, &qdev->flags)) {
  netdev_info(qdev->ndev, "Already done\n");
  return;
 }
 kfree(qdev->lrg_buf);
 pci_free_consistent(qdev->pdev,
       qdev->lrg_buf_q_alloc_size,
       qdev->lrg_buf_q_alloc_virt_addr,
       qdev->lrg_buf_q_alloc_phy_addr);

 qdev->lrg_buf_q_virt_addr = ((void*)0);

 pci_free_consistent(qdev->pdev,
       qdev->small_buf_q_alloc_size,
       qdev->small_buf_q_alloc_virt_addr,
       qdev->small_buf_q_alloc_phy_addr);

 qdev->small_buf_q_virt_addr = ((void*)0);

 clear_bit(QL_ALLOC_BUFQS_DONE, &qdev->flags);
}
