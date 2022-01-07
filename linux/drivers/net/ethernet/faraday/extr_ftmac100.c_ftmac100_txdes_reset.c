
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100_txdes {scalar_t__ txdes3; scalar_t__ txdes2; int txdes1; scalar_t__ txdes0; } ;


 int FTMAC100_TXDES1_EDOTR ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void ftmac100_txdes_reset(struct ftmac100_txdes *txdes)
{

 txdes->txdes0 = 0;
 txdes->txdes1 &= cpu_to_le32(FTMAC100_TXDES1_EDOTR);
 txdes->txdes2 = 0;
 txdes->txdes3 = 0;
}
