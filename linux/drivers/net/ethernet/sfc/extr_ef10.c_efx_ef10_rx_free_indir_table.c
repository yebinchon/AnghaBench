
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ context_id; } ;
struct efx_nic {TYPE_1__ rss_context; } ;


 scalar_t__ EFX_EF10_RSS_CONTEXT_INVALID ;
 int WARN_ON (int) ;
 int efx_ef10_free_rss_context (struct efx_nic*,scalar_t__) ;

__attribute__((used)) static void efx_ef10_rx_free_indir_table(struct efx_nic *efx)
{
 int rc;

 if (efx->rss_context.context_id != EFX_EF10_RSS_CONTEXT_INVALID) {
  rc = efx_ef10_free_rss_context(efx, efx->rss_context.context_id);
  WARN_ON(rc != 0);
 }
 efx->rss_context.context_id = EFX_EF10_RSS_CONTEXT_INVALID;
}
