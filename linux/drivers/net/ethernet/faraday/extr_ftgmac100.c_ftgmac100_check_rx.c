
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftgmac100_rxdes {int rxdes0; } ;
struct ftgmac100 {size_t rx_pointer; struct ftgmac100_rxdes* rxdes; } ;


 int FTGMAC100_RXDES0_RXPKT_RDY ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static bool ftgmac100_check_rx(struct ftgmac100 *priv)
{
 struct ftgmac100_rxdes *rxdes = &priv->rxdes[priv->rx_pointer];


 return !!(rxdes->rxdes0 & cpu_to_le32(FTGMAC100_RXDES0_RXPKT_RDY));
}
