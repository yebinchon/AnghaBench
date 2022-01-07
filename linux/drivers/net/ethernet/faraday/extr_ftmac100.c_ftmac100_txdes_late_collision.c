
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100_txdes {int txdes0; } ;


 int FTMAC100_TXDES0_TXPKT_LATECOL ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static bool ftmac100_txdes_late_collision(struct ftmac100_txdes *txdes)
{
 return txdes->txdes0 & cpu_to_le32(FTMAC100_TXDES0_TXPKT_LATECOL);
}
