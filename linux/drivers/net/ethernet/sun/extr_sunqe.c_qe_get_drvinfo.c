
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunqe {struct platform_device* op; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {int dummy; } ;
struct linux_prom_registers {int which_io; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 struct sunqe* netdev_priv (struct net_device*) ;
 struct linux_prom_registers* of_get_property (int ,char*,int *) ;
 int snprintf (int ,int,char*,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void qe_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 const struct linux_prom_registers *regs;
 struct sunqe *qep = netdev_priv(dev);
 struct platform_device *op;

 strlcpy(info->driver, "sunqe", sizeof(info->driver));
 strlcpy(info->version, "3.0", sizeof(info->version));

 op = qep->op;
 regs = of_get_property(op->dev.of_node, "reg", ((void*)0));
 if (regs)
  snprintf(info->bus_info, sizeof(info->bus_info), "SBUS:%d",
    regs->which_io);

}
