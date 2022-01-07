
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tg3 {TYPE_2__* napi; int dev; scalar_t__ link_up; } ;
struct TYPE_4__ {TYPE_1__* hw_status; } ;
struct TYPE_3__ {int status; } ;


 int SD_STATUS_UPDATED ;
 int netif_carrier_on (int ) ;
 int netif_tx_wake_all_queues (int ) ;
 int tg3_enable_ints (struct tg3*) ;
 int tg3_napi_enable (struct tg3*) ;
 int tg3_ptp_resume (struct tg3*) ;

__attribute__((used)) static inline void tg3_netif_start(struct tg3 *tp)
{
 tg3_ptp_resume(tp);





 netif_tx_wake_all_queues(tp->dev);

 if (tp->link_up)
  netif_carrier_on(tp->dev);

 tg3_napi_enable(tp);
 tp->napi[0].hw_status->status |= SD_STATUS_UPDATED;
 tg3_enable_ints(tp);
}
