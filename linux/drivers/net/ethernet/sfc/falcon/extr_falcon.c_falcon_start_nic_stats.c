
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_nic_data {scalar_t__ stats_disable_count; } ;
struct ef4_nic {int stats_lock; struct falcon_nic_data* nic_data; } ;


 int falcon_stats_request (struct ef4_nic*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void falcon_start_nic_stats(struct ef4_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;

 spin_lock_bh(&efx->stats_lock);
 if (--nic_data->stats_disable_count == 0)
  falcon_stats_request(efx);
 spin_unlock_bh(&efx->stats_lock);
}
