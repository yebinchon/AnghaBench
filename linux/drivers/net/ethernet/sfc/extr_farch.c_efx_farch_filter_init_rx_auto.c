
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ rx_scatter; } ;
struct efx_farch_filter_spec {int flags; scalar_t__ dmaq_id; int priority; } ;


 int EFX_FILTER_FLAG_RX ;
 int EFX_FILTER_FLAG_RX_RSS ;
 int EFX_FILTER_FLAG_RX_SCATTER ;
 int EFX_FILTER_PRI_AUTO ;
 scalar_t__ efx_rss_enabled (struct efx_nic*) ;

__attribute__((used)) static void
efx_farch_filter_init_rx_auto(struct efx_nic *efx,
         struct efx_farch_filter_spec *spec)
{



 spec->priority = EFX_FILTER_PRI_AUTO;
 spec->flags = (EFX_FILTER_FLAG_RX |
         (efx_rss_enabled(efx) ? EFX_FILTER_FLAG_RX_RSS : 0) |
         (efx->rx_scatter ? EFX_FILTER_FLAG_RX_SCATTER : 0));
 spec->dmaq_id = 0;
}
