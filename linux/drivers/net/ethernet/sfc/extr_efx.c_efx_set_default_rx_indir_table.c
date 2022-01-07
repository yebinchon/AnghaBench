
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rss_context {int * rx_indir_table; } ;
struct efx_nic {int rss_spread; } ;


 size_t ARRAY_SIZE (int *) ;
 int ethtool_rxfh_indir_default (size_t,int ) ;

void efx_set_default_rx_indir_table(struct efx_nic *efx,
        struct efx_rss_context *ctx)
{
 size_t i;

 for (i = 0; i < ARRAY_SIZE(ctx->rx_indir_table); i++)
  ctx->rx_indir_table[i] =
   ethtool_rxfh_indir_default(i, efx->rss_spread);
}
