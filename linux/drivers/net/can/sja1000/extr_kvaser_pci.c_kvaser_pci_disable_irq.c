
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sja1000_priv {struct kvaser_pci* priv; } ;
struct net_device {int dummy; } ;
struct kvaser_pci {scalar_t__ conf_addr; } ;


 int INTCSR_ADDON_INTENABLE_M ;
 scalar_t__ S5920_INTCSR ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void kvaser_pci_disable_irq(struct net_device *dev)
{
 struct sja1000_priv *priv = netdev_priv(dev);
 struct kvaser_pci *board = priv->priv;
 u32 intcsr;


 intcsr = ioread32(board->conf_addr + S5920_INTCSR);
 intcsr &= ~INTCSR_ADDON_INTENABLE_M;
 iowrite32(intcsr, board->conf_addr + S5920_INTCSR);
}
