
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct hinic_port_mac_cmd {int mac; scalar_t__ status; int func_idx; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef int port_mac_cmd ;


 int EFAULT ;
 int ETH_ALEN ;
 int HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_PORT_CMD_GET_MAC ;
 int dev_err (int *,char*,scalar_t__) ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_port_mac_cmd*,int,struct hinic_port_mac_cmd*,int*) ;
 int memcpy (int *,int ,int ) ;

int hinic_port_get_mac(struct hinic_dev *nic_dev, u8 *addr)
{
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_port_mac_cmd port_mac_cmd;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;
 u16 out_size;
 int err;

 port_mac_cmd.func_idx = HINIC_HWIF_FUNC_IDX(hwif);

 err = hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_GET_MAC,
     &port_mac_cmd, sizeof(port_mac_cmd),
     &port_mac_cmd, &out_size);
 if (err || (out_size != sizeof(port_mac_cmd)) || port_mac_cmd.status) {
  dev_err(&pdev->dev, "Failed to get mac, ret = %d\n",
   port_mac_cmd.status);
  return -EFAULT;
 }

 memcpy(addr, port_mac_cmd.mac, ETH_ALEN);
 return 0;
}
