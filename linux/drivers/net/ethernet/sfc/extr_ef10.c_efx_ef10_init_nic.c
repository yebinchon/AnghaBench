
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rx_indir_table; } ;
struct efx_nic {TYPE_2__ rss_context; TYPE_1__* type; int net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int must_check_datapath_caps; int must_realloc_vis; int must_restore_piobufs; scalar_t__ n_piobufs; int n_allocated_vis; } ;
struct TYPE_3__ {int (* rx_push_rss_config ) (struct efx_nic*,int,int ,int *) ;} ;


 int EPERM ;
 int drv ;
 int efx_ef10_alloc_piobufs (struct efx_nic*,scalar_t__) ;
 int efx_ef10_alloc_vis (struct efx_nic*,int ,int ) ;
 int efx_ef10_free_piobufs (struct efx_nic*) ;
 int efx_ef10_init_datapath_caps (struct efx_nic*) ;
 int efx_ef10_link_piobufs (struct efx_nic*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int netif_err (struct efx_nic*,int ,int ,char*,int) ;
 int stub1 (struct efx_nic*,int,int ,int *) ;

__attribute__((used)) static int efx_ef10_init_nic(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 int rc;

 if (nic_data->must_check_datapath_caps) {
  rc = efx_ef10_init_datapath_caps(efx);
  if (rc)
   return rc;
  nic_data->must_check_datapath_caps = 0;
 }

 if (nic_data->must_realloc_vis) {

  rc = efx_ef10_alloc_vis(efx, nic_data->n_allocated_vis,
     nic_data->n_allocated_vis);
  if (rc)
   return rc;
  nic_data->must_realloc_vis = 0;
 }

 if (nic_data->must_restore_piobufs && nic_data->n_piobufs) {
  rc = efx_ef10_alloc_piobufs(efx, nic_data->n_piobufs);
  if (rc == 0) {
   rc = efx_ef10_link_piobufs(efx);
   if (rc)
    efx_ef10_free_piobufs(efx);
  }





  if (rc == -EPERM)
   netif_dbg(efx, drv, efx->net_dev,
      "not permitted to restore PIO buffers\n");
  else if (rc)
   netif_err(efx, drv, efx->net_dev,
      "failed to restore PIO buffers (%d)\n", rc);
  nic_data->must_restore_piobufs = 0;
 }


 rc = efx->type->rx_push_rss_config(efx, 0,
        efx->rss_context.rx_indir_table, ((void*)0));

 return 0;
}
