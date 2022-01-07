
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_rss_config {scalar_t__ status; scalar_t__ rq_priority_number; void* template_id; void* rss_en; int func_id; int member_0; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef int rss_cfg ;


 int EINVAL ;
 int HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_PORT_CMD_RSS_CFG ;
 int dev_err (int *,char*,int,scalar_t__,int ) ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_rss_config*,int,struct hinic_rss_config*,int *) ;

int hinic_rss_cfg(struct hinic_dev *nic_dev, u8 rss_en, u8 template_id)
{
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_rss_config rss_cfg = { 0 };
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;
 u16 out_size;
 int err;

 rss_cfg.func_id = HINIC_HWIF_FUNC_IDX(hwif);
 rss_cfg.rss_en = rss_en;
 rss_cfg.template_id = template_id;
 rss_cfg.rq_priority_number = 0;

 err = hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_RSS_CFG,
     &rss_cfg, sizeof(rss_cfg),
     &rss_cfg, &out_size);
 if (err || !out_size || rss_cfg.status) {
  dev_err(&pdev->dev,
   "Failed to set rss cfg, err: %d, status: 0x%x, out size: 0x%x\n",
   err, rss_cfg.status, out_size);
  return -EINVAL;
 }

 return 0;
}
