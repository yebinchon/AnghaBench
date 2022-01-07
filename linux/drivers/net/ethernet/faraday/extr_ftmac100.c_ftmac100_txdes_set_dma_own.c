
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100_txdes {int txdes0; } ;


 int FTMAC100_TXDES0_TXDMA_OWN ;
 int cpu_to_le32 (int ) ;
 int wmb () ;

__attribute__((used)) static void ftmac100_txdes_set_dma_own(struct ftmac100_txdes *txdes)
{




 wmb();
 txdes->txdes0 |= cpu_to_le32(FTMAC100_TXDES0_TXDMA_OWN);
}
