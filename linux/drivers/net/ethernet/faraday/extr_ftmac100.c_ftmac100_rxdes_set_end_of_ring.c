
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100_rxdes {int rxdes1; } ;


 int FTMAC100_RXDES1_EDORR ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void ftmac100_rxdes_set_end_of_ring(struct ftmac100_rxdes *rxdes)
{
 rxdes->rxdes1 |= cpu_to_le32(FTMAC100_RXDES1_EDORR);
}
