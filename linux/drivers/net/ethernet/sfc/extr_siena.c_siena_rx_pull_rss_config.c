
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int temp ;
struct TYPE_2__ {scalar_t__ rx_hash_key; } ;
struct efx_nic {TYPE_1__ rss_context; } ;
typedef int efx_oword_t ;


 int FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH ;
 int FR_CZ_RX_RSS_IPV6_REG1 ;
 int FR_CZ_RX_RSS_IPV6_REG2 ;
 int FR_CZ_RX_RSS_IPV6_REG3 ;
 int efx_farch_rx_pull_indir_table (struct efx_nic*) ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int memcpy (scalar_t__,int *,int) ;

__attribute__((used)) static int siena_rx_pull_rss_config(struct efx_nic *efx)
{
 efx_oword_t temp;





 efx_reado(efx, &temp, FR_CZ_RX_RSS_IPV6_REG1);
 memcpy(efx->rss_context.rx_hash_key, &temp, sizeof(temp));
 efx_reado(efx, &temp, FR_CZ_RX_RSS_IPV6_REG2);
 memcpy(efx->rss_context.rx_hash_key + sizeof(temp), &temp, sizeof(temp));
 efx_reado(efx, &temp, FR_CZ_RX_RSS_IPV6_REG3);
 memcpy(efx->rss_context.rx_hash_key + 2 * sizeof(temp), &temp,
        FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH / 8);
 efx_farch_rx_pull_indir_table(efx);
 return 0;
}
