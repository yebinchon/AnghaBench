
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql3_adapter {int req_q_size; int rsp_q_size; int flags; int req_q_phy_addr; int * req_q_virt_addr; int pdev; int ndev; int rsp_q_phy_addr; int * rsp_q_virt_addr; } ;
struct ob_mac_iocb_req {int dummy; } ;
struct net_rsp_iocb {int dummy; } ;


 int ENOMEM ;
 int LS_64BITS (int ) ;
 int NUM_REQ_Q_ENTRIES ;
 int NUM_RSP_Q_ENTRIES ;
 int QL_ALLOC_REQ_RSP_Q_DONE ;
 int netdev_err (int ,char*) ;
 void* pci_alloc_consistent (int ,size_t,int *) ;
 int pci_free_consistent (int ,size_t,int *,int ) ;
 int set_bit (int ,int *) ;
 int wmb () ;

__attribute__((used)) static int ql_alloc_net_req_rsp_queues(struct ql3_adapter *qdev)
{
 qdev->req_q_size =
     (u32) (NUM_REQ_Q_ENTRIES * sizeof(struct ob_mac_iocb_req));

 qdev->rsp_q_size = NUM_RSP_Q_ENTRIES * sizeof(struct net_rsp_iocb);




 wmb();

 qdev->req_q_virt_addr =
     pci_alloc_consistent(qdev->pdev,
     (size_t) qdev->req_q_size,
     &qdev->req_q_phy_addr);

 if ((qdev->req_q_virt_addr == ((void*)0)) ||
     LS_64BITS(qdev->req_q_phy_addr) & (qdev->req_q_size - 1)) {
  netdev_err(qdev->ndev, "reqQ failed\n");
  return -ENOMEM;
 }

 qdev->rsp_q_virt_addr =
     pci_alloc_consistent(qdev->pdev,
     (size_t) qdev->rsp_q_size,
     &qdev->rsp_q_phy_addr);

 if ((qdev->rsp_q_virt_addr == ((void*)0)) ||
     LS_64BITS(qdev->rsp_q_phy_addr) & (qdev->rsp_q_size - 1)) {
  netdev_err(qdev->ndev, "rspQ allocation failed\n");
  pci_free_consistent(qdev->pdev, (size_t) qdev->req_q_size,
        qdev->req_q_virt_addr,
        qdev->req_q_phy_addr);
  return -ENOMEM;
 }

 set_bit(QL_ALLOC_REQ_RSP_Q_DONE, &qdev->flags);

 return 0;
}
