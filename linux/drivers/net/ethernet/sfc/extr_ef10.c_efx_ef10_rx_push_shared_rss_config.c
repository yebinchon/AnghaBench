
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int rss_context; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int rx_rss_context_exclusive; } ;


 int efx_ef10_alloc_rss_context (struct efx_nic*,int,int *,unsigned int*) ;
 int efx_set_default_rx_indir_table (struct efx_nic*,int *) ;

__attribute__((used)) static int efx_ef10_rx_push_shared_rss_config(struct efx_nic *efx,
           unsigned *context_size)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 int rc = efx_ef10_alloc_rss_context(efx, 0, &efx->rss_context,
         context_size);

 if (rc != 0)
  return rc;

 nic_data->rx_rss_context_exclusive = 0;
 efx_set_default_rx_indir_table(efx, &efx->rss_context);
 return 0;
}
