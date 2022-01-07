
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tg3_napi {int tx_prod; int tx_cons; scalar_t__ tx_pending; } ;


 int TG3_TX_RING_SIZE ;
 int barrier () ;

__attribute__((used)) static inline u32 tg3_tx_avail(struct tg3_napi *tnapi)
{

 barrier();
 return tnapi->tx_pending -
        ((tnapi->tx_prod - tnapi->tx_cons) & (TG3_TX_RING_SIZE - 1));
}
