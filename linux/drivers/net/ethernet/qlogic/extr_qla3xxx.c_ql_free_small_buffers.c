
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int * small_buf_virt_addr; int small_buf_phy_addr; int small_buf_total_size; int pdev; int ndev; int flags; } ;


 int QL_ALLOC_SMALL_BUF_DONE ;
 int netdev_info (int ,char*) ;
 int pci_free_consistent (int ,int ,int *,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ql_free_small_buffers(struct ql3_adapter *qdev)
{
 if (!test_bit(QL_ALLOC_SMALL_BUF_DONE, &qdev->flags)) {
  netdev_info(qdev->ndev, "Already done\n");
  return;
 }
 if (qdev->small_buf_virt_addr != ((void*)0)) {
  pci_free_consistent(qdev->pdev,
        qdev->small_buf_total_size,
        qdev->small_buf_virt_addr,
        qdev->small_buf_phy_addr);

  qdev->small_buf_virt_addr = ((void*)0);
 }
}
