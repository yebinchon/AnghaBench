
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int context_id; } ;
struct efx_nic {unsigned int vf_count; TYPE_1__ rss_context; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int must_realloc_vis; int must_restore_rss_contexts; int must_restore_filters; int must_restore_piobufs; int must_probe_vswitching; TYPE_2__* vf; int vport_id; } ;
struct TYPE_4__ {scalar_t__ vport_id; } ;


 int EFX_EF10_RSS_CONTEXT_INVALID ;
 int EVB_PORT_ID_ASSIGNED ;
 int efx_ef10_forget_old_piobufs (struct efx_nic*) ;

__attribute__((used)) static void efx_ef10_reset_mc_allocations(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;





 nic_data->must_realloc_vis = 1;
 nic_data->must_restore_rss_contexts = 1;
 nic_data->must_restore_filters = 1;
 nic_data->must_restore_piobufs = 1;
 efx_ef10_forget_old_piobufs(efx);
 efx->rss_context.context_id = EFX_EF10_RSS_CONTEXT_INVALID;


 nic_data->must_probe_vswitching = 1;
 nic_data->vport_id = EVB_PORT_ID_ASSIGNED;





}
