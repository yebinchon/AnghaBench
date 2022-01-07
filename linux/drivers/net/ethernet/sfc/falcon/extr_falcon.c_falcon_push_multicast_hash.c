
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ef4_multicast_hash {int * oword; } ;
struct ef4_nic {int mac_lock; union ef4_multicast_hash multicast_hash; } ;


 int FR_AB_MAC_MC_HASH_REG0 ;
 int FR_AB_MAC_MC_HASH_REG1 ;
 int WARN_ON (int) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void falcon_push_multicast_hash(struct ef4_nic *efx)
{
 union ef4_multicast_hash *mc_hash = &efx->multicast_hash;

 WARN_ON(!mutex_is_locked(&efx->mac_lock));

 ef4_writeo(efx, &mc_hash->oword[0], FR_AB_MAC_MC_HASH_REG0);
 ef4_writeo(efx, &mc_hash->oword[1], FR_AB_MAC_MC_HASH_REG1);
}
