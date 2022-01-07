
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct cpmac_priv {scalar_t__ regs; } ;


 int CPMAC_REG_END ;
 int cpmac_read (scalar_t__,int) ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;
 int printk (char*,...) ;

__attribute__((used)) static void cpmac_dump_regs(struct net_device *dev)
{
 int i;
 struct cpmac_priv *priv = netdev_priv(dev);

 for (i = 0; i < CPMAC_REG_END; i += 4) {
  if (i % 16 == 0) {
   if (i)
    printk("\n");
   printk("%s: reg[%p]:", dev->name, priv->regs + i);
  }
  printk(" %08x", cpmac_read(priv->regs, i));
 }
 printk("\n");
}
