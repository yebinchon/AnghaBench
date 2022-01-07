
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_port_cap {scalar_t__ status; int func_idx; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;


 int EINVAL ;
 int HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_PORT_CMD_GET_CAP ;
 int dev_err (int *,char*,scalar_t__) ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_port_cap*,int,struct hinic_port_cap*,int*) ;

int hinic_port_get_cap(struct hinic_dev *nic_dev,
         struct hinic_port_cap *port_cap)
{
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;
 u16 out_size;
 int err;

 port_cap->func_idx = HINIC_HWIF_FUNC_IDX(hwif);

 err = hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_GET_CAP,
     port_cap, sizeof(*port_cap),
     port_cap, &out_size);
 if (err || (out_size != sizeof(*port_cap)) || port_cap->status) {
  dev_err(&pdev->dev,
   "Failed to get port capabilities, ret = %d\n",
   port_cap->status);
  return -EINVAL;
 }

 return 0;
}
