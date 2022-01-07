
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int dev; } ;


 int netif_carrier_off (int ) ;
 int netif_trans_update (int ) ;
 int netif_tx_disable (int ) ;
 int tg3_napi_disable (struct tg3*) ;

__attribute__((used)) static inline void tg3_netif_stop(struct tg3 *tp)
{
 netif_trans_update(tp->dev);
 tg3_napi_disable(tp);
 netif_carrier_off(tp->dev);
 netif_tx_disable(tp->dev);
}
