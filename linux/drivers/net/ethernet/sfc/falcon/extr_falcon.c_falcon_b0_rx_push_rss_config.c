
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int temp ;
struct ef4_nic {int * rx_indir_table; int const* rx_hash_key; } ;
typedef int ef4_oword_t ;


 int FR_BZ_RX_RSS_TKEY ;
 int ef4_farch_rx_push_indir_table (struct ef4_nic*) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static int falcon_b0_rx_push_rss_config(struct ef4_nic *efx, bool user,
     const u32 *rx_indir_table)
{
 ef4_oword_t temp;

 (void) user;

 memcpy(&temp, efx->rx_hash_key, sizeof(temp));
 ef4_writeo(efx, &temp, FR_BZ_RX_RSS_TKEY);

 memcpy(efx->rx_indir_table, rx_indir_table,
        sizeof(efx->rx_indir_table));
 ef4_farch_rx_push_indir_table(efx);
 return 0;
}
