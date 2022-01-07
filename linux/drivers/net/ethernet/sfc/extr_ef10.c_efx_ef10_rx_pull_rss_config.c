
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int rss_lock; int rss_context; } ;


 int efx_ef10_rx_pull_rss_context_config (struct efx_nic*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int efx_ef10_rx_pull_rss_config(struct efx_nic *efx)
{
 int rc;

 mutex_lock(&efx->rss_lock);
 rc = efx_ef10_rx_pull_rss_context_config(efx, &efx->rss_context);
 mutex_unlock(&efx->rss_lock);
 return rc;
}
