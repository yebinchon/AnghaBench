
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100_rxdes {int rxdes2; } ;
typedef int dma_addr_t ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static dma_addr_t ftmac100_rxdes_get_dma_addr(struct ftmac100_rxdes *rxdes)
{
 return le32_to_cpu(rxdes->rxdes2);
}
