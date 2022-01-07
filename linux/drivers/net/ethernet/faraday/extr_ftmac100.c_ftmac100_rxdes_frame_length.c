
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100_rxdes {int rxdes0; } ;


 unsigned int FTMAC100_RXDES0_RFL ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static unsigned int ftmac100_rxdes_frame_length(struct ftmac100_rxdes *rxdes)
{
 return le32_to_cpu(rxdes->rxdes0) & FTMAC100_RXDES0_RFL;
}
