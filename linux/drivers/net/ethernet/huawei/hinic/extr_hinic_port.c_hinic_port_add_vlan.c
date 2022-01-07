
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hinic_port_vlan_cmd {int vlan_id; int func_idx; } ;
struct hinic_hwdev {int hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; } ;
typedef int port_vlan_cmd ;


 int HINIC_HWIF_FUNC_IDX (int ) ;
 int HINIC_PORT_CMD_ADD_VLAN ;
 int hinic_port_msg_cmd (struct hinic_hwdev*,int ,struct hinic_port_vlan_cmd*,int,int *,int *) ;

int hinic_port_add_vlan(struct hinic_dev *nic_dev, u16 vlan_id)
{
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_port_vlan_cmd port_vlan_cmd;

 port_vlan_cmd.func_idx = HINIC_HWIF_FUNC_IDX(hwdev->hwif);
 port_vlan_cmd.vlan_id = vlan_id;

 return hinic_port_msg_cmd(hwdev, HINIC_PORT_CMD_ADD_VLAN,
      &port_vlan_cmd, sizeof(port_vlan_cmd),
      ((void*)0), ((void*)0));
}
