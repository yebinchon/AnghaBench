
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_rss_engine_type {scalar_t__ status; void* template_id; void* hash_engine; int func_id; int member_0; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef int rss_engine ;


 int EINVAL ;
 int HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_PORT_CMD_SET_RSS_HASH_ENGINE ;
 int dev_err (int *,char*,int,scalar_t__,int ) ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_rss_engine_type*,int,struct hinic_rss_engine_type*,int *) ;

int hinic_rss_set_hash_engine(struct hinic_dev *nic_dev, u8 template_id,
         u8 type)
{
 struct hinic_rss_engine_type rss_engine = { 0 };
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;
 u16 out_size;
 int err;

 rss_engine.func_id = HINIC_HWIF_FUNC_IDX(hwif);
 rss_engine.hash_engine = type;
 rss_engine.template_id = template_id;

 err = hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_SET_RSS_HASH_ENGINE,
     &rss_engine, sizeof(rss_engine),
     &rss_engine, &out_size);
 if (err || !out_size || rss_engine.status) {
  dev_err(&pdev->dev,
   "Failed to set hash engine, err: %d, status: 0x%x, out size: 0x%x\n",
   err, rss_engine.status, out_size);
  return -EINVAL;
 }

 return 0;
}
