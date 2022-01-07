
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100_rxdes {int rxdes0; } ;


 int FTMAC100_RXDES0_RX_ERR ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static bool ftmac100_rxdes_rx_error(struct ftmac100_rxdes *rxdes)
{
 return rxdes->rxdes0 & cpu_to_le32(FTMAC100_RXDES0_RX_ERR);
}
