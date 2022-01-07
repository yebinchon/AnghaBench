
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_rss_indir_table {int * indir; scalar_t__ status; int template_id; int func_id; int member_0; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef int rss_cfg ;


 int EINVAL ;
 int HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_PORT_CMD_GET_RSS_TEMPLATE_INDIR_TBL ;
 int HINIC_RSS_INDIR_SIZE ;
 int dev_err (int *,char*,int,scalar_t__,int) ;
 int hinic_be32_to_cpu (int *,int) ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_rss_indir_table*,int,struct hinic_rss_indir_table*,int*) ;

int hinic_rss_get_indir_tbl(struct hinic_dev *nic_dev, u32 tmpl_idx,
       u32 *indir_table)
{
 struct hinic_rss_indir_table rss_cfg = { 0 };
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;
 u16 out_size = sizeof(rss_cfg);
 int err = 0, i;

 rss_cfg.func_id = HINIC_HWIF_FUNC_IDX(hwif);
 rss_cfg.template_id = tmpl_idx;

 err = hinic_port_msg_cmd(hwdev,
     HINIC_PORT_CMD_GET_RSS_TEMPLATE_INDIR_TBL,
     &rss_cfg, sizeof(rss_cfg), &rss_cfg,
     &out_size);
 if (err || !out_size || rss_cfg.status) {
  dev_err(&pdev->dev, "Failed to get indir table, err: %d, status: 0x%x, out size: 0x%x\n",
   err, rss_cfg.status, out_size);
  return -EINVAL;
 }

 hinic_be32_to_cpu(rss_cfg.indir, HINIC_RSS_INDIR_SIZE);
 for (i = 0; i < HINIC_RSS_INDIR_SIZE; i++)
  indir_table[i] = rss_cfg.indir[i];

 return 0;
}
