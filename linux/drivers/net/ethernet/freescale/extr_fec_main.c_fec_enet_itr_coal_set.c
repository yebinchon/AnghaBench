
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fec_enet_private {int quirks; scalar_t__ hwp; int tx_time_itr; int tx_pkts_itr; int rx_time_itr; int rx_pkts_itr; } ;


 int FEC_ITR_CLK_SEL ;
 int FEC_ITR_EN ;
 int FEC_ITR_ICFT (int ) ;
 int FEC_ITR_ICTT (int ) ;
 int FEC_QUIRK_HAS_AVB ;
 scalar_t__ FEC_RXIC0 ;
 scalar_t__ FEC_RXIC1 ;
 scalar_t__ FEC_RXIC2 ;
 scalar_t__ FEC_TXIC0 ;
 scalar_t__ FEC_TXIC1 ;
 scalar_t__ FEC_TXIC2 ;
 int fec_enet_us_to_itr_clock (struct net_device*,int ) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void fec_enet_itr_coal_set(struct net_device *ndev)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 int rx_itr, tx_itr;


 if (!fep->rx_time_itr || !fep->rx_pkts_itr ||
     !fep->tx_time_itr || !fep->tx_pkts_itr)
  return;




 rx_itr = FEC_ITR_CLK_SEL;
 tx_itr = FEC_ITR_CLK_SEL;


 rx_itr |= FEC_ITR_ICFT(fep->rx_pkts_itr);
 rx_itr |= FEC_ITR_ICTT(fec_enet_us_to_itr_clock(ndev, fep->rx_time_itr));
 tx_itr |= FEC_ITR_ICFT(fep->tx_pkts_itr);
 tx_itr |= FEC_ITR_ICTT(fec_enet_us_to_itr_clock(ndev, fep->tx_time_itr));

 rx_itr |= FEC_ITR_EN;
 tx_itr |= FEC_ITR_EN;

 writel(tx_itr, fep->hwp + FEC_TXIC0);
 writel(rx_itr, fep->hwp + FEC_RXIC0);
 if (fep->quirks & FEC_QUIRK_HAS_AVB) {
  writel(tx_itr, fep->hwp + FEC_TXIC1);
  writel(rx_itr, fep->hwp + FEC_RXIC1);
  writel(tx_itr, fep->hwp + FEC_TXIC2);
  writel(rx_itr, fep->hwp + FEC_RXIC2);
 }
}
