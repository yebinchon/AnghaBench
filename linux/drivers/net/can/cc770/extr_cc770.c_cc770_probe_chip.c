
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cc770_priv {int cpu_interface; int control_normal_mode; int reg_base; } ;
struct TYPE_2__ {int * data; } ;


 int CPUIF_RST ;
 int CTRL_CCE ;
 int CTRL_EAF ;
 int CTRL_INI ;
 int ENODEV ;
 int cc770_read_reg (struct cc770_priv*,int ) ;
 int cc770_write_reg (struct cc770_priv*,int ,int) ;
 int control ;
 int cpu_interface ;
 TYPE_1__* msgobj ;
 int netdev_info (struct net_device*,char*,int ) ;
 struct cc770_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int cc770_probe_chip(struct net_device *dev)
{
 struct cc770_priv *priv = netdev_priv(dev);


 cc770_write_reg(priv, control, CTRL_CCE | CTRL_EAF | CTRL_INI);

 cc770_write_reg(priv, cpu_interface, priv->cpu_interface);





 if (cc770_read_reg(priv, cpu_interface) & CPUIF_RST) {
  netdev_info(dev, "probing @0x%p failed (reset)\n",
       priv->reg_base);
  return -ENODEV;
 }


 cc770_write_reg(priv, msgobj[1].data[1], 0x25);
 cc770_write_reg(priv, msgobj[2].data[3], 0x52);
 cc770_write_reg(priv, msgobj[10].data[6], 0xc3);
 if ((cc770_read_reg(priv, msgobj[1].data[1]) != 0x25) ||
     (cc770_read_reg(priv, msgobj[2].data[3]) != 0x52) ||
     (cc770_read_reg(priv, msgobj[10].data[6]) != 0xc3)) {
  netdev_info(dev, "probing @0x%p failed (pattern)\n",
       priv->reg_base);
  return -ENODEV;
 }


 if (cc770_read_reg(priv, control) & CTRL_EAF)
  priv->control_normal_mode |= CTRL_EAF;

 return 0;
}
