
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int template_mgmt ;
struct pci_dev {int dev; } ;
struct hinic_rss_template_mgmt {int template_id; scalar_t__ status; int cmd; int func_id; int member_0; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;


 int EINVAL ;
 int HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_PORT_CMD_RSS_TEMP_MGR ;
 int NIC_RSS_CMD_TEMP_ALLOC ;
 int dev_err (int *,char*,int,scalar_t__,int ) ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_rss_template_mgmt*,int,struct hinic_rss_template_mgmt*,int *) ;

int hinic_rss_template_alloc(struct hinic_dev *nic_dev, u8 *tmpl_idx)
{
 struct hinic_rss_template_mgmt template_mgmt = { 0 };
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;
 u16 out_size;
 int err;

 template_mgmt.func_id = HINIC_HWIF_FUNC_IDX(hwif);
 template_mgmt.cmd = NIC_RSS_CMD_TEMP_ALLOC;

 err = hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_RSS_TEMP_MGR,
     &template_mgmt, sizeof(template_mgmt),
     &template_mgmt, &out_size);
 if (err || !out_size || template_mgmt.status) {
  dev_err(&pdev->dev, "Failed to alloc rss template, err: %d, status: 0x%x, out size: 0x%x\n",
   err, template_mgmt.status, out_size);
  return -EINVAL;
 }

 *tmpl_idx = template_mgmt.template_id;

 return 0;
}
