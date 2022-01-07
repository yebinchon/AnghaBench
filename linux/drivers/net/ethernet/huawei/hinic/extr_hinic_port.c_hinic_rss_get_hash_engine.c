
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_rss_engine_type {int hash_engine; scalar_t__ status; int template_id; int func_id; int member_0; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef int hash_type ;


 int EINVAL ;
 int HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_PORT_CMD_GET_RSS_HASH_ENGINE ;
 int dev_err (int *,char*,int,scalar_t__,int) ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_rss_engine_type*,int,struct hinic_rss_engine_type*,int*) ;

int hinic_rss_get_hash_engine(struct hinic_dev *nic_dev, u8 tmpl_idx, u8 *type)
{
 struct hinic_rss_engine_type hash_type = { 0 };
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_hwif *hwif;
 struct pci_dev *pdev;
 u16 out_size = sizeof(hash_type);
 int err;

 if (!hwdev || !type)
  return -EINVAL;

 hwif = hwdev->hwif;
 pdev = hwif->pdev;

 hash_type.func_id = HINIC_HWIF_FUNC_IDX(hwif);
 hash_type.template_id = tmpl_idx;

 err = hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_GET_RSS_HASH_ENGINE,
     &hash_type, sizeof(hash_type),
     &hash_type, &out_size);
 if (err || !out_size || hash_type.status) {
  dev_err(&pdev->dev, "Failed to get hash engine, err: %d, status: 0x%x, out size: 0x%x\n",
   err, hash_type.status, out_size);
  return -EINVAL;
 }

 *type = hash_type.hash_engine;
 return 0;
}
