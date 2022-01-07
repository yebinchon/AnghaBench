
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int stats_timer; int run_flags; int netdev; } ;
struct bna_stats {int dummy; } ;
typedef enum bna_cb_status { ____Placeholder_bna_cb_status } bna_cb_status ;


 int BNAD_RF_STATS_TIMER_RUNNING ;
 int BNAD_STATS_TIMER_FREQ ;
 int BNAD_UPDATE_CTR (struct bnad*,int ) ;
 int BNA_CB_SUCCESS ;
 int hw_stats_updates ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int netif_running (int ) ;
 int test_bit (int ,int *) ;

void
bnad_cb_stats_get(struct bnad *bnad, enum bna_cb_status status,
         struct bna_stats *stats)
{
 if (status == BNA_CB_SUCCESS)
  BNAD_UPDATE_CTR(bnad, hw_stats_updates);

 if (!netif_running(bnad->netdev) ||
  !test_bit(BNAD_RF_STATS_TIMER_RUNNING, &bnad->run_flags))
  return;

 mod_timer(&bnad->stats_timer,
    jiffies + msecs_to_jiffies(BNAD_STATS_TIMER_FREQ));
}
