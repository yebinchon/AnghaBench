
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct falcon_nic_data {scalar_t__ stats_disable_count; struct ef4_nic* efx; } ;
struct ef4_nic {int stats_lock; } ;


 int falcon_stats_complete (struct ef4_nic*) ;
 int falcon_stats_request (struct ef4_nic*) ;
 struct falcon_nic_data* from_timer (int ,struct timer_list*,int ) ;
 struct falcon_nic_data* nic_data ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stats_timer ;

__attribute__((used)) static void falcon_stats_timer_func(struct timer_list *t)
{
 struct falcon_nic_data *nic_data = from_timer(nic_data, t,
            stats_timer);
 struct ef4_nic *efx = nic_data->efx;

 spin_lock(&efx->stats_lock);

 falcon_stats_complete(efx);
 if (nic_data->stats_disable_count == 0)
  falcon_stats_request(efx);

 spin_unlock(&efx->stats_lock);
}
