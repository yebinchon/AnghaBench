
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_lro_config {scalar_t__ status; void* lro_max_wqe_num; void* lro_ipv6_en; void* lro_ipv4_en; int func_id; int member_0; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef int lro_cfg ;


 int EINVAL ;
 int HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_PORT_CMD_SET_LRO ;
 int dev_err (int *,char*,scalar_t__) ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_lro_config*,int,struct hinic_lro_config*,int*) ;

__attribute__((used)) static int hinic_set_rx_lro(struct hinic_dev *nic_dev, u8 ipv4_en, u8 ipv6_en,
       u8 max_wqe_num)
{
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct hinic_lro_config lro_cfg = { 0 };
 struct pci_dev *pdev = hwif->pdev;
 u16 out_size = sizeof(lro_cfg);
 int err;

 lro_cfg.func_id = HINIC_HWIF_FUNC_IDX(hwif);
 lro_cfg.lro_ipv4_en = ipv4_en;
 lro_cfg.lro_ipv6_en = ipv6_en;
 lro_cfg.lro_max_wqe_num = max_wqe_num;

 err = hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_SET_LRO,
     &lro_cfg, sizeof(lro_cfg),
     &lro_cfg, &out_size);
 if (err || !out_size || lro_cfg.status) {
  dev_err(&pdev->dev,
   "Failed to set lro offload, ret = %d\n",
   lro_cfg.status);
  return -EINVAL;
 }

 return 0;
}
