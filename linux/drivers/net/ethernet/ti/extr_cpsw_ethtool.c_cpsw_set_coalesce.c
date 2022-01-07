
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {int bus_freq_mhz; int coal_intvl; TYPE_1__* wr_regs; } ;
struct TYPE_2__ {int int_control; int tx_imax; int rx_imax; } ;


 int CPSW_CMINTMAX_INTVL ;
 int CPSW_CMINTMIN_INTVL ;
 int CPSW_INTPACEEN ;
 int CPSW_INTPRESCALE_MASK ;
 int cpsw_notice (struct cpsw_priv*,int ,char*,int) ;
 struct cpsw_priv* netdev_priv (struct net_device*) ;
 int readl (int *) ;
 int timer ;
 int writel (int,int *) ;

int cpsw_set_coalesce(struct net_device *ndev, struct ethtool_coalesce *coal)
{
 struct cpsw_priv *priv = netdev_priv(ndev);
 u32 int_ctrl;
 u32 num_interrupts = 0;
 u32 prescale = 0;
 u32 addnl_dvdr = 1;
 u32 coal_intvl = 0;
 struct cpsw_common *cpsw = priv->cpsw;

 coal_intvl = coal->rx_coalesce_usecs;

 int_ctrl = readl(&cpsw->wr_regs->int_control);
 prescale = cpsw->bus_freq_mhz * 4;

 if (!coal->rx_coalesce_usecs) {
  int_ctrl &= ~(CPSW_INTPRESCALE_MASK | CPSW_INTPACEEN);
  goto update_return;
 }

 if (coal_intvl < CPSW_CMINTMIN_INTVL)
  coal_intvl = CPSW_CMINTMIN_INTVL;

 if (coal_intvl > CPSW_CMINTMAX_INTVL) {



  addnl_dvdr = CPSW_INTPRESCALE_MASK / prescale;

  if (addnl_dvdr > 1) {
   prescale *= addnl_dvdr;
   if (coal_intvl > (CPSW_CMINTMAX_INTVL * addnl_dvdr))
    coal_intvl = (CPSW_CMINTMAX_INTVL
      * addnl_dvdr);
  } else {
   addnl_dvdr = 1;
   coal_intvl = CPSW_CMINTMAX_INTVL;
  }
 }

 num_interrupts = (1000 * addnl_dvdr) / coal_intvl;
 writel(num_interrupts, &cpsw->wr_regs->rx_imax);
 writel(num_interrupts, &cpsw->wr_regs->tx_imax);

 int_ctrl |= CPSW_INTPACEEN;
 int_ctrl &= (~CPSW_INTPRESCALE_MASK);
 int_ctrl |= (prescale & CPSW_INTPRESCALE_MASK);

update_return:
 writel(int_ctrl, &cpsw->wr_regs->int_control);

 cpsw_notice(priv, timer, "Set coalesce to %d usecs.\n", coal_intvl);
 cpsw->coal_intvl = coal_intvl;

 return 0;
}
