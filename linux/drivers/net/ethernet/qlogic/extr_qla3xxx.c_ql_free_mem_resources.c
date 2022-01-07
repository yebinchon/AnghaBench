
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int * shadow_reg_virt_addr; int shadow_reg_phy_addr; int pdev; } ;


 int PAGE_SIZE ;
 int pci_free_consistent (int ,int ,int *,int ) ;
 int ql_free_buffer_queues (struct ql3_adapter*) ;
 int ql_free_large_buffers (struct ql3_adapter*) ;
 int ql_free_net_req_rsp_queues (struct ql3_adapter*) ;
 int ql_free_send_free_list (struct ql3_adapter*) ;
 int ql_free_small_buffers (struct ql3_adapter*) ;

__attribute__((used)) static void ql_free_mem_resources(struct ql3_adapter *qdev)
{
 ql_free_send_free_list(qdev);
 ql_free_large_buffers(qdev);
 ql_free_small_buffers(qdev);
 ql_free_buffer_queues(qdev);
 ql_free_net_req_rsp_queues(qdev);
 if (qdev->shadow_reg_virt_addr != ((void*)0)) {
  pci_free_consistent(qdev->pdev,
        PAGE_SIZE,
        qdev->shadow_reg_virt_addr,
        qdev->shadow_reg_phy_addr);
  qdev->shadow_reg_virt_addr = ((void*)0);
 }
}
