
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {int dummy; } ;
struct dsa_switch {struct ksz_device* priv; } ;


 int PORT_VLAN_LOOKUP_VID_0 ;
 int REG_PORT_LUE_CTRL ;
 int REG_SW_LUE_CTRL_0 ;
 int SW_VLAN_ENABLE ;
 int ksz_cfg (struct ksz_device*,int ,int ,int) ;
 int ksz_port_cfg (struct ksz_device*,int,int ,int ,int) ;

__attribute__((used)) static int ksz9477_port_vlan_filtering(struct dsa_switch *ds, int port,
           bool flag)
{
 struct ksz_device *dev = ds->priv;

 if (flag) {
  ksz_port_cfg(dev, port, REG_PORT_LUE_CTRL,
        PORT_VLAN_LOOKUP_VID_0, 1);
  ksz_cfg(dev, REG_SW_LUE_CTRL_0, SW_VLAN_ENABLE, 1);
 } else {
  ksz_cfg(dev, REG_SW_LUE_CTRL_0, SW_VLAN_ENABLE, 0);
  ksz_port_cfg(dev, port, REG_PORT_LUE_CTRL,
        PORT_VLAN_LOOKUP_VID_0, 0);
 }

 return 0;
}
