
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ context_id; } ;
struct efx_nic {TYPE_1__ rss_context; } ;


 scalar_t__ EFX_EF10_RSS_CONTEXT_INVALID ;
 int EOPNOTSUPP ;
 int efx_ef10_rx_push_shared_rss_config (struct efx_nic*,int *) ;

__attribute__((used)) static int efx_ef10_vf_rx_push_rss_config(struct efx_nic *efx, bool user,
       const u32 *rx_indir_table
       __attribute__ ((unused)),
       const u8 *key
       __attribute__ ((unused)))
{
 if (user)
  return -EOPNOTSUPP;
 if (efx->rss_context.context_id != EFX_EF10_RSS_CONTEXT_INVALID)
  return 0;
 return efx_ef10_rx_push_shared_rss_config(efx, ((void*)0));
}
