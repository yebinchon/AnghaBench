
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
struct pcnet32_private {scalar_t__ chip_version; int autoneg; int port_tp; int fdx; int lock; TYPE_3__* a; TYPE_1__* init_block; int mii_if; scalar_t__ mii; } ;
struct net_device {int base_addr; } ;
struct TYPE_5__ {scalar_t__ autoneg; scalar_t__ port; scalar_t__ duplex; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct TYPE_6__ {int (* read_bcr ) (int ,int) ;int (* read_csr ) (int ,int ) ;int (* write_bcr ) (int ,int,int) ;int (* write_csr ) (int ,int ,int) ;} ;
struct TYPE_4__ {int mode; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int CSR0 ;
 int CSR0_NORMAL ;
 int CSR0_STOP ;
 int CSR15 ;
 scalar_t__ DUPLEX_FULL ;
 int EOPNOTSUPP ;
 scalar_t__ PCNET32_79C970A ;
 scalar_t__ PORT_TP ;
 int cpu_to_le16 (int) ;
 int mii_ethtool_set_link_ksettings (int *,struct ethtool_link_ksettings const*) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pcnet32_clr_suspend (struct pcnet32_private*,int ) ;
 int pcnet32_restart (struct net_device*,int ) ;
 int pcnet32_suspend (struct net_device*,unsigned long*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ,int) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int,int) ;
 int stub4 (int ,int,int) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int ,int) ;
 int stub7 (int ,int) ;
 int stub8 (int ,int,int) ;

__attribute__((used)) static int pcnet32_set_link_ksettings(struct net_device *dev,
          const struct ethtool_link_ksettings *cmd)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 ulong ioaddr = dev->base_addr;
 unsigned long flags;
 int r = -EOPNOTSUPP;
 int suspended, bcr2, bcr9, csr15;

 spin_lock_irqsave(&lp->lock, flags);
 if (lp->mii) {
  r = mii_ethtool_set_link_ksettings(&lp->mii_if, cmd);
 } else if (lp->chip_version == PCNET32_79C970A) {
  suspended = pcnet32_suspend(dev, &flags, 0);
  if (!suspended)
   lp->a->write_csr(ioaddr, CSR0, CSR0_STOP);

  lp->autoneg = cmd->base.autoneg == AUTONEG_ENABLE;
  bcr2 = lp->a->read_bcr(ioaddr, 2);
  if (cmd->base.autoneg == AUTONEG_ENABLE) {
   lp->a->write_bcr(ioaddr, 2, bcr2 | 0x0002);
  } else {
   lp->a->write_bcr(ioaddr, 2, bcr2 & ~0x0002);

   lp->port_tp = cmd->base.port == PORT_TP;
   csr15 = lp->a->read_csr(ioaddr, CSR15) & ~0x0180;
   if (cmd->base.port == PORT_TP)
    csr15 |= 0x0080;
   lp->a->write_csr(ioaddr, CSR15, csr15);
   lp->init_block->mode = cpu_to_le16(csr15);

   lp->fdx = cmd->base.duplex == DUPLEX_FULL;
   bcr9 = lp->a->read_bcr(ioaddr, 9) & ~0x0003;
   if (cmd->base.duplex == DUPLEX_FULL)
    bcr9 |= 0x0003;
   lp->a->write_bcr(ioaddr, 9, bcr9);
  }
  if (suspended)
   pcnet32_clr_suspend(lp, ioaddr);
  else if (netif_running(dev))
   pcnet32_restart(dev, CSR0_NORMAL);
  r = 0;
 }
 spin_unlock_irqrestore(&lp->lock, flags);
 return r;
}
