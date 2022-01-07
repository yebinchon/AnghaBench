
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_pf_to_mgmt {struct hinic_hwif* hwif; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
typedef enum hinic_mod_type { ____Placeholder_hinic_mod_type } hinic_mod_type ;
typedef enum hinic_mgmt_msg_type { ____Placeholder_hinic_mgmt_msg_type } hinic_mgmt_msg_type ;


 int EINVAL ;
 int HINIC_MGMT_MSG_SYNC ;
 int MGMT_DIRECT_SEND ;
 int MSG_NOT_RESP ;
 int MSG_SZ_IS_VALID (int ) ;
 int dev_err (int *,char*) ;
 int msg_to_mgmt_sync (struct hinic_pf_to_mgmt*,int,int ,void*,int ,void*,int *,int ,int ) ;

int hinic_msg_to_mgmt(struct hinic_pf_to_mgmt *pf_to_mgmt,
        enum hinic_mod_type mod, u8 cmd,
        void *buf_in, u16 in_size, void *buf_out, u16 *out_size,
        enum hinic_mgmt_msg_type sync)
{
 struct hinic_hwif *hwif = pf_to_mgmt->hwif;
 struct pci_dev *pdev = hwif->pdev;

 if (sync != HINIC_MGMT_MSG_SYNC) {
  dev_err(&pdev->dev, "Invalid MGMT msg type\n");
  return -EINVAL;
 }

 if (!MSG_SZ_IS_VALID(in_size)) {
  dev_err(&pdev->dev, "Invalid MGMT msg buffer size\n");
  return -EINVAL;
 }

 return msg_to_mgmt_sync(pf_to_mgmt, mod, cmd, buf_in, in_size,
    buf_out, out_size, MGMT_DIRECT_SEND,
    MSG_NOT_RESP);
}
