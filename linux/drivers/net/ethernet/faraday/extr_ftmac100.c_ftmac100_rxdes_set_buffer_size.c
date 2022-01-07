
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100_rxdes {int rxdes1; } ;


 int FTMAC100_RXDES1_EDORR ;
 int FTMAC100_RXDES1_RXBUF_SIZE (unsigned int) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void ftmac100_rxdes_set_buffer_size(struct ftmac100_rxdes *rxdes,
        unsigned int size)
{
 rxdes->rxdes1 &= cpu_to_le32(FTMAC100_RXDES1_EDORR);
 rxdes->rxdes1 |= cpu_to_le32(FTMAC100_RXDES1_RXBUF_SIZE(size));
}
