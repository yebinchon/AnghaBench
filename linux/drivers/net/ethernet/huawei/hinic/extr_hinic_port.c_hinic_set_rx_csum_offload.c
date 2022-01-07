
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
struct hinic_checksum_offload {scalar_t__ status; int rx_csum_offload; int func_id; int member_0; } ;
typedef int rx_csum_cfg ;


 int EINVAL ;
 int HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_PORT_CMD_SET_RX_CSUM ;
 int dev_err (int *,char*,scalar_t__) ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_checksum_offload*,int,struct hinic_checksum_offload*,int *) ;

int hinic_set_rx_csum_offload(struct hinic_dev *nic_dev, u32 en)
{
 struct hinic_checksum_offload rx_csum_cfg = {0};
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_hwif *hwif;
 struct pci_dev *pdev;
 u16 out_size;
 int err;

 if (!hwdev)
  return -EINVAL;

 hwif = hwdev->hwif;
 pdev = hwif->pdev;
 rx_csum_cfg.func_id = HINIC_HWIF_FUNC_IDX(hwif);
 rx_csum_cfg.rx_csum_offload = en;

 err = hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_SET_RX_CSUM,
     &rx_csum_cfg, sizeof(rx_csum_cfg),
     &rx_csum_cfg, &out_size);
 if (err || !out_size || rx_csum_cfg.status) {
  dev_err(&pdev->dev,
   "Failed to set rx csum offload, ret = %d\n",
   rx_csum_cfg.status);
  return -EINVAL;
 }

 return 0;
}
