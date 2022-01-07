
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {int dummy; } ;
struct dsa_switch {struct ksz_device* priv; } ;


 int SW_VLAN_ENABLE ;
 int S_MIRROR_CTRL ;
 int ksz_cfg (struct ksz_device*,int ,int ,int) ;

__attribute__((used)) static int ksz8795_port_vlan_filtering(struct dsa_switch *ds, int port,
           bool flag)
{
 struct ksz_device *dev = ds->priv;

 ksz_cfg(dev, S_MIRROR_CTRL, SW_VLAN_ENABLE, flag);

 return 0;
}
