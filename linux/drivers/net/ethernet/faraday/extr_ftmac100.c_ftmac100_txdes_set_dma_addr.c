
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100_txdes {int txdes2; } ;
typedef int dma_addr_t ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static void ftmac100_txdes_set_dma_addr(struct ftmac100_txdes *txdes,
     dma_addr_t addr)
{
 txdes->txdes2 = cpu_to_le32(addr);
}
