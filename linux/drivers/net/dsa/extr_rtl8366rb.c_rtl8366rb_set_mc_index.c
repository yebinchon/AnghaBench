
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_smi {int num_ports; int map; } ;


 int EINVAL ;
 int RTL8366RB_NUM_VLANS ;
 int RTL8366RB_PORT_VLAN_CTRL_MASK ;
 int RTL8366RB_PORT_VLAN_CTRL_REG (int) ;
 int RTL8366RB_PORT_VLAN_CTRL_SHIFT (int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int rtl8366rb_set_mc_index(struct realtek_smi *smi, int port, int index)
{
 if (port >= smi->num_ports || index >= RTL8366RB_NUM_VLANS)
  return -EINVAL;

 return regmap_update_bits(smi->map, RTL8366RB_PORT_VLAN_CTRL_REG(port),
    RTL8366RB_PORT_VLAN_CTRL_MASK <<
     RTL8366RB_PORT_VLAN_CTRL_SHIFT(port),
    (index & RTL8366RB_PORT_VLAN_CTRL_MASK) <<
     RTL8366RB_PORT_VLAN_CTRL_SHIFT(port));
}
