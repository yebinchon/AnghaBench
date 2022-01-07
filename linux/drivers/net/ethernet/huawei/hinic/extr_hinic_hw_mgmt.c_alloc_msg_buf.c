
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_pf_to_mgmt {int sync_msg_buf; int recv_resp_msg_from_mgmt; int recv_msg_from_mgmt; struct hinic_hwif* hwif; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_PF_MGMT_BUF_SIZE ;
 int alloc_recv_msg (struct hinic_pf_to_mgmt*,int *) ;
 int dev_err (int *,char*) ;
 int devm_kzalloc (int *,int ,int ) ;

__attribute__((used)) static int alloc_msg_buf(struct hinic_pf_to_mgmt *pf_to_mgmt)
{
 struct hinic_hwif *hwif = pf_to_mgmt->hwif;
 struct pci_dev *pdev = hwif->pdev;
 int err;

 err = alloc_recv_msg(pf_to_mgmt,
        &pf_to_mgmt->recv_msg_from_mgmt);
 if (err) {
  dev_err(&pdev->dev, "Failed to allocate recv msg\n");
  return err;
 }

 err = alloc_recv_msg(pf_to_mgmt,
        &pf_to_mgmt->recv_resp_msg_from_mgmt);
 if (err) {
  dev_err(&pdev->dev, "Failed to allocate resp recv msg\n");
  return err;
 }

 pf_to_mgmt->sync_msg_buf = devm_kzalloc(&pdev->dev,
      MAX_PF_MGMT_BUF_SIZE,
      GFP_KERNEL);
 if (!pf_to_mgmt->sync_msg_buf)
  return -ENOMEM;

 return 0;
}
