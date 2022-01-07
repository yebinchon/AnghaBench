
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int temp ;
struct TYPE_2__ {int const* rx_indir_table; int const* rx_hash_key; } ;
struct efx_nic {TYPE_1__ rss_context; } ;
typedef int const efx_oword_t ;


 int BUILD_BUG_ON (int) ;
 int EFX_POPULATE_OWORD_2 (int const,int ,int,int ,int) ;
 int FRF_CZ_RX_RSS_IPV6_IP_THASH_ENABLE ;
 int FRF_CZ_RX_RSS_IPV6_THASH_ENABLE ;
 scalar_t__ FRF_CZ_RX_RSS_IPV6_TKEY_HI_LBN ;
 int FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH ;
 int FR_BZ_RX_RSS_TKEY ;
 int FR_CZ_RX_RSS_IPV6_REG1 ;
 int FR_CZ_RX_RSS_IPV6_REG2 ;
 int FR_CZ_RX_RSS_IPV6_REG3 ;
 int efx_farch_rx_push_indir_table (struct efx_nic*) ;
 int efx_writeo (struct efx_nic*,int const*,int ) ;
 int memcpy (int const*,int const*,int) ;

__attribute__((used)) static int siena_rx_push_rss_config(struct efx_nic *efx, bool user,
        const u32 *rx_indir_table, const u8 *key)
{
 efx_oword_t temp;


 if (key)
  memcpy(efx->rss_context.rx_hash_key, key, sizeof(temp));
 memcpy(&temp, efx->rss_context.rx_hash_key, sizeof(temp));
 efx_writeo(efx, &temp, FR_BZ_RX_RSS_TKEY);


 BUILD_BUG_ON(sizeof(efx->rss_context.rx_hash_key) <
       2 * sizeof(temp) + FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH / 8 ||
       FRF_CZ_RX_RSS_IPV6_TKEY_HI_LBN != 0);
 memcpy(&temp, efx->rss_context.rx_hash_key, sizeof(temp));
 efx_writeo(efx, &temp, FR_CZ_RX_RSS_IPV6_REG1);
 memcpy(&temp, efx->rss_context.rx_hash_key + sizeof(temp), sizeof(temp));
 efx_writeo(efx, &temp, FR_CZ_RX_RSS_IPV6_REG2);
 EFX_POPULATE_OWORD_2(temp, FRF_CZ_RX_RSS_IPV6_THASH_ENABLE, 1,
        FRF_CZ_RX_RSS_IPV6_IP_THASH_ENABLE, 1);
 memcpy(&temp, efx->rss_context.rx_hash_key + 2 * sizeof(temp),
        FRF_CZ_RX_RSS_IPV6_TKEY_HI_WIDTH / 8);
 efx_writeo(efx, &temp, FR_CZ_RX_RSS_IPV6_REG3);

 memcpy(efx->rss_context.rx_indir_table, rx_indir_table,
        sizeof(efx->rss_context.rx_indir_table));
 efx_farch_rx_push_indir_table(efx);

 return 0;
}
