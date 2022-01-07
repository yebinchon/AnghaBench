
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct hinic_port_mtu_cmd {int mtu; scalar_t__ status; int func_idx; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; struct net_device* netdev; } ;
typedef int port_mtu_cmd ;


 int EFAULT ;
 int EINVAL ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_MAX_JUMBO_FRAME_SIZE ;
 int HINIC_MIN_MTU_SIZE ;
 int HINIC_PORT_CMD_CHANGE_MTU ;
 int dev_err (int *,char*,scalar_t__) ;
 int drv ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_port_mtu_cmd*,int,struct hinic_port_mtu_cmd*,int*) ;
 int netif_err (struct hinic_dev*,int ,struct net_device*,char*) ;

int hinic_port_set_mtu(struct hinic_dev *nic_dev, int new_mtu)
{
 struct net_device *netdev = nic_dev->netdev;
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_port_mtu_cmd port_mtu_cmd;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;
 int err, max_frame;
 u16 out_size;

 if (new_mtu < HINIC_MIN_MTU_SIZE) {
  netif_err(nic_dev, drv, netdev, "mtu < MIN MTU size");
  return -EINVAL;
 }

 max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN;
 if (max_frame > HINIC_MAX_JUMBO_FRAME_SIZE) {
  netif_err(nic_dev, drv, netdev, "mtu > MAX MTU size");
  return -EINVAL;
 }

 port_mtu_cmd.func_idx = HINIC_HWIF_FUNC_IDX(hwif);
 port_mtu_cmd.mtu = new_mtu;

 err = hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_CHANGE_MTU,
     &port_mtu_cmd, sizeof(port_mtu_cmd),
     &port_mtu_cmd, &out_size);
 if (err || (out_size != sizeof(port_mtu_cmd)) || port_mtu_cmd.status) {
  dev_err(&pdev->dev, "Failed to set mtu, ret = %d\n",
   port_mtu_cmd.status);
  return -EFAULT;
 }

 return 0;
}
