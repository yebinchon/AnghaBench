
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_coalesce {int tx_coalesce_usecs; int tx_max_coalesced_frames; int rx_coalesce_usecs; int rx_max_coalesced_frames; } ;
struct netsec_priv {struct ethtool_coalesce et_coalesce; } ;
struct net_device {int dummy; } ;


 int NETSEC_REG_NRM_RX_INTEN_SET ;
 int NETSEC_REG_NRM_RX_RXINT_PKTCNT ;
 int NETSEC_REG_NRM_RX_RXINT_TMR ;
 int NETSEC_REG_NRM_TX_DONE_TXINT_PKTCNT ;
 int NETSEC_REG_NRM_TX_INTEN_SET ;
 int NETSEC_REG_NRM_TX_TXINT_TMR ;
 int NRM_RX_ST_PKTCNT ;
 int NRM_RX_ST_TMREXP ;
 int NRM_TX_ST_TMREXP ;
 int NRM_TX_ST_TXDONE ;
 struct netsec_priv* netdev_priv (struct net_device*) ;
 int netsec_write (struct netsec_priv*,int ,int) ;

__attribute__((used)) static int netsec_et_set_coalesce(struct net_device *net_device,
      struct ethtool_coalesce *et_coalesce)
{
 struct netsec_priv *priv = netdev_priv(net_device);

 priv->et_coalesce = *et_coalesce;

 if (priv->et_coalesce.tx_coalesce_usecs < 50)
  priv->et_coalesce.tx_coalesce_usecs = 50;
 if (priv->et_coalesce.tx_max_coalesced_frames < 1)
  priv->et_coalesce.tx_max_coalesced_frames = 1;

 netsec_write(priv, NETSEC_REG_NRM_TX_DONE_TXINT_PKTCNT,
       priv->et_coalesce.tx_max_coalesced_frames);
 netsec_write(priv, NETSEC_REG_NRM_TX_TXINT_TMR,
       priv->et_coalesce.tx_coalesce_usecs);
 netsec_write(priv, NETSEC_REG_NRM_TX_INTEN_SET, NRM_TX_ST_TXDONE);
 netsec_write(priv, NETSEC_REG_NRM_TX_INTEN_SET, NRM_TX_ST_TMREXP);

 if (priv->et_coalesce.rx_coalesce_usecs < 50)
  priv->et_coalesce.rx_coalesce_usecs = 50;
 if (priv->et_coalesce.rx_max_coalesced_frames < 1)
  priv->et_coalesce.rx_max_coalesced_frames = 1;

 netsec_write(priv, NETSEC_REG_NRM_RX_RXINT_PKTCNT,
       priv->et_coalesce.rx_max_coalesced_frames);
 netsec_write(priv, NETSEC_REG_NRM_RX_RXINT_TMR,
       priv->et_coalesce.rx_coalesce_usecs);
 netsec_write(priv, NETSEC_REG_NRM_RX_INTEN_SET, NRM_RX_ST_PKTCNT);
 netsec_write(priv, NETSEC_REG_NRM_RX_INTEN_SET, NRM_RX_ST_TMREXP);

 return 0;
}
