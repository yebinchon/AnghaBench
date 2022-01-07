
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fulldup; int idletime; int tailtime; } ;
struct TYPE_4__ {int tx_state; } ;
struct scc_channel {int dev; TYPE_1__ kiss; TYPE_2__ stat; } ;


 int HWEV_ALL_SENT ;


 int TIMER_OFF ;
 int TXS_BUSY ;
 int TXS_IDLE2 ;
 int netif_wake_queue (int ) ;
 int scc_notify (struct scc_channel*,int ) ;
 int scc_start_tx_timer (struct scc_channel*,int ,int) ;
 int t_idle ;
 int t_tail ;

__attribute__((used)) static void scc_tx_done(struct scc_channel *scc)
{




 switch (scc->kiss.fulldup)
 {
  case 129:
   scc->stat.tx_state = TXS_IDLE2;
   if (scc->kiss.idletime != TIMER_OFF)
    scc_start_tx_timer(scc, t_idle,
         scc->kiss.idletime*100);
   break;
  case 128:
   scc_notify(scc, HWEV_ALL_SENT);
   break;
  default:
   scc->stat.tx_state = TXS_BUSY;
   scc_start_tx_timer(scc, t_tail, scc->kiss.tailtime);
 }

 netif_wake_queue(scc->dev);
}
