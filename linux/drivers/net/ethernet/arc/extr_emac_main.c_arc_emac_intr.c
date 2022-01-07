
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int rx_missed_errors; int rx_errors; int rx_crc_errors; int rx_frame_errors; int rx_over_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct arc_emac_priv {int rx_missed_errors; int napi; } ;
typedef int irqreturn_t ;


 unsigned int ERR_MASK ;
 int IRQ_HANDLED ;
 unsigned int MDIO_MASK ;
 unsigned int MSER_MASK ;
 unsigned int RXCR_MASK ;
 unsigned int RXFL_MASK ;
 unsigned int RXFR_MASK ;
 unsigned int RXINT_MASK ;
 int R_ENABLE ;
 int R_STATUS ;
 unsigned int TXINT_MASK ;
 int __napi_schedule (int *) ;
 int arc_reg_clr (struct arc_emac_priv*,int ,unsigned int) ;
 unsigned int arc_reg_get (struct arc_emac_priv*,int ) ;
 int arc_reg_set (struct arc_emac_priv*,int ,unsigned int) ;
 scalar_t__ likely (int ) ;
 int napi_schedule (int *) ;
 int napi_schedule_prep (int *) ;
 struct arc_emac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static irqreturn_t arc_emac_intr(int irq, void *dev_instance)
{
 struct net_device *ndev = dev_instance;
 struct arc_emac_priv *priv = netdev_priv(ndev);
 struct net_device_stats *stats = &ndev->stats;
 unsigned int status;

 status = arc_reg_get(priv, R_STATUS);
 status &= ~MDIO_MASK;


 arc_reg_set(priv, R_STATUS, status);

 if (status & (RXINT_MASK | TXINT_MASK)) {
  if (likely(napi_schedule_prep(&priv->napi))) {
   arc_reg_clr(priv, R_ENABLE, RXINT_MASK | TXINT_MASK);
   __napi_schedule(&priv->napi);
  }
 }

 if (status & ERR_MASK) {




  if (status & MSER_MASK) {
   stats->rx_missed_errors += 0x100;
   stats->rx_errors += 0x100;
   priv->rx_missed_errors += 0x100;
   napi_schedule(&priv->napi);
  }

  if (status & RXCR_MASK) {
   stats->rx_crc_errors += 0x100;
   stats->rx_errors += 0x100;
  }

  if (status & RXFR_MASK) {
   stats->rx_frame_errors += 0x100;
   stats->rx_errors += 0x100;
  }

  if (status & RXFL_MASK) {
   stats->rx_over_errors += 0x100;
   stats->rx_errors += 0x100;
  }
 }

 return IRQ_HANDLED;
}
