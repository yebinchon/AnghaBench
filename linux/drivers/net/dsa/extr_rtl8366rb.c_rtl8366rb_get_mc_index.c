
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct realtek_smi {int num_ports; int map; } ;


 int EINVAL ;
 int RTL8366RB_PORT_VLAN_CTRL_MASK ;
 int RTL8366RB_PORT_VLAN_CTRL_REG (int) ;
 int RTL8366RB_PORT_VLAN_CTRL_SHIFT (int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int rtl8366rb_get_mc_index(struct realtek_smi *smi, int port, int *val)
{
 u32 data;
 int ret;

 if (port >= smi->num_ports)
  return -EINVAL;

 ret = regmap_read(smi->map, RTL8366RB_PORT_VLAN_CTRL_REG(port),
     &data);
 if (ret)
  return ret;

 *val = (data >> RTL8366RB_PORT_VLAN_CTRL_SHIFT(port)) &
  RTL8366RB_PORT_VLAN_CTRL_MASK;

 return 0;
}
