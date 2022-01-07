
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100_txdes {int txdes0; } ;


 int FTMAC100_TXDES0_TXDMA_OWN ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static bool ftmac100_txdes_owned_by_dma(struct ftmac100_txdes *txdes)
{
 return txdes->txdes0 & cpu_to_le32(FTMAC100_TXDES0_TXDMA_OWN);
}
