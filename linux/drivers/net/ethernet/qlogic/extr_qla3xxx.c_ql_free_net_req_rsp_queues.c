
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int flags; int * rsp_q_virt_addr; int rsp_q_phy_addr; int rsp_q_size; int pdev; int * req_q_virt_addr; int req_q_phy_addr; int req_q_size; int ndev; } ;


 int QL_ALLOC_REQ_RSP_Q_DONE ;
 int clear_bit (int ,int *) ;
 int netdev_info (int ,char*) ;
 int pci_free_consistent (int ,int ,int *,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ql_free_net_req_rsp_queues(struct ql3_adapter *qdev)
{
 if (!test_bit(QL_ALLOC_REQ_RSP_Q_DONE, &qdev->flags)) {
  netdev_info(qdev->ndev, "Already done\n");
  return;
 }

 pci_free_consistent(qdev->pdev,
       qdev->req_q_size,
       qdev->req_q_virt_addr, qdev->req_q_phy_addr);

 qdev->req_q_virt_addr = ((void*)0);

 pci_free_consistent(qdev->pdev,
       qdev->rsp_q_size,
       qdev->rsp_q_virt_addr, qdev->rsp_q_phy_addr);

 qdev->rsp_q_virt_addr = ((void*)0);

 clear_bit(QL_ALLOC_REQ_RSP_Q_DONE, &qdev->flags);
}
