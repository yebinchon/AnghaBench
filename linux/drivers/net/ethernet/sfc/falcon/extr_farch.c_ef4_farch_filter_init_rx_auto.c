
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {scalar_t__ rx_scatter; } ;
struct ef4_farch_filter_spec {int flags; scalar_t__ dmaq_id; int priority; } ;


 int EF4_FILTER_FLAG_RX ;
 int EF4_FILTER_FLAG_RX_RSS ;
 int EF4_FILTER_FLAG_RX_SCATTER ;
 int EF4_FILTER_PRI_AUTO ;
 scalar_t__ ef4_rss_enabled (struct ef4_nic*) ;

__attribute__((used)) static void
ef4_farch_filter_init_rx_auto(struct ef4_nic *efx,
         struct ef4_farch_filter_spec *spec)
{



 spec->priority = EF4_FILTER_PRI_AUTO;
 spec->flags = (EF4_FILTER_FLAG_RX |
         (ef4_rss_enabled(efx) ? EF4_FILTER_FLAG_RX_RSS : 0) |
         (efx->rx_scatter ? EF4_FILTER_FLAG_RX_SCATTER : 0));
 spec->dmaq_id = 0;
}
