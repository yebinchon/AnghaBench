
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct hinic_port_mac_cmd {scalar_t__ status; int mac; scalar_t__ vlan_id; int func_idx; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; struct net_device* netdev; } ;
typedef int port_mac_cmd ;
typedef enum mac_op { ____Placeholder_mac_op } mac_op ;
typedef enum hinic_port_cmd { ____Placeholder_hinic_port_cmd } hinic_port_cmd ;


 int EFAULT ;
 int EINVAL ;
 int ETH_ALEN ;
 int HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_PORT_CMD_DEL_MAC ;
 int HINIC_PORT_CMD_SET_MAC ;
 int MAC_SET ;
 scalar_t__ VLAN_N_VID ;
 int dev_err (int *,char*,scalar_t__) ;
 int drv ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int,struct hinic_port_mac_cmd*,int,struct hinic_port_mac_cmd*,scalar_t__*) ;
 int memcpy (int ,int const*,int ) ;
 int netif_err (struct hinic_dev*,int ,struct net_device*,char*) ;

__attribute__((used)) static int change_mac(struct hinic_dev *nic_dev, const u8 *addr,
        u16 vlan_id, enum mac_op op)
{
 struct net_device *netdev = nic_dev->netdev;
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_port_mac_cmd port_mac_cmd;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;
 enum hinic_port_cmd cmd;
 u16 out_size;
 int err;

 if (vlan_id >= VLAN_N_VID) {
  netif_err(nic_dev, drv, netdev, "Invalid VLAN number\n");
  return -EINVAL;
 }

 if (op == MAC_SET)
  cmd = HINIC_PORT_CMD_SET_MAC;
 else
  cmd = HINIC_PORT_CMD_DEL_MAC;

 port_mac_cmd.func_idx = HINIC_HWIF_FUNC_IDX(hwif);
 port_mac_cmd.vlan_id = vlan_id;
 memcpy(port_mac_cmd.mac, addr, ETH_ALEN);

 err = hinic_port_msg_cmd(hwdev, cmd, &port_mac_cmd,
     sizeof(port_mac_cmd),
     &port_mac_cmd, &out_size);
 if (err || (out_size != sizeof(port_mac_cmd)) || port_mac_cmd.status) {
  dev_err(&pdev->dev, "Failed to change MAC, ret = %d\n",
   port_mac_cmd.status);
  return -EFAULT;
 }

 return 0;
}
