
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rx_length_errors; int rx_crc_errors; int rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct ftgmac100 {struct net_device* netdev; } ;


 int FTGMAC100_RXDES0_CRC_ERR ;
 int FTGMAC100_RXDES0_FTL ;
 int FTGMAC100_RXDES0_RUNT ;
 int FTGMAC100_RXDES0_RX_ERR ;
 int FTGMAC100_RXDES0_RX_ODD_NB ;

__attribute__((used)) static void ftgmac100_rx_packet_error(struct ftgmac100 *priv, u32 status)
{
 struct net_device *netdev = priv->netdev;

 if (status & FTGMAC100_RXDES0_RX_ERR)
  netdev->stats.rx_errors++;

 if (status & FTGMAC100_RXDES0_CRC_ERR)
  netdev->stats.rx_crc_errors++;

 if (status & (FTGMAC100_RXDES0_FTL |
        FTGMAC100_RXDES0_RUNT |
        FTGMAC100_RXDES0_RX_ODD_NB))
  netdev->stats.rx_length_errors++;
}
