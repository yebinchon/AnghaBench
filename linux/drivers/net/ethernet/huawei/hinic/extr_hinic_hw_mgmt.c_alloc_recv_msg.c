
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_recv_msg {void* buf_out; void* msg; } ;
struct hinic_pf_to_mgmt {struct hinic_hwif* hwif; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_PF_MGMT_BUF_SIZE ;
 void* devm_kzalloc (int *,int ,int ) ;

__attribute__((used)) static int alloc_recv_msg(struct hinic_pf_to_mgmt *pf_to_mgmt,
     struct hinic_recv_msg *recv_msg)
{
 struct hinic_hwif *hwif = pf_to_mgmt->hwif;
 struct pci_dev *pdev = hwif->pdev;

 recv_msg->msg = devm_kzalloc(&pdev->dev, MAX_PF_MGMT_BUF_SIZE,
         GFP_KERNEL);
 if (!recv_msg->msg)
  return -ENOMEM;

 recv_msg->buf_out = devm_kzalloc(&pdev->dev, MAX_PF_MGMT_BUF_SIZE,
      GFP_KERNEL);
 if (!recv_msg->buf_out)
  return -ENOMEM;

 return 0;
}
