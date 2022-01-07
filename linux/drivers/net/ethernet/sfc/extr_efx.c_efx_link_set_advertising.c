
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int wanted_fc; int * link_advertising; } ;


 unsigned long const ADVERTISED_Asym_Pause ;
 int ADVERTISED_Autoneg ;
 unsigned long const ADVERTISED_Pause ;
 int EFX_FC_RX ;
 int EFX_FC_TX ;
 int memcpy (int *,unsigned long const*,int) ;

void efx_link_set_advertising(struct efx_nic *efx,
         const unsigned long *advertising)
{
 memcpy(efx->link_advertising, advertising,
        sizeof(__ETHTOOL_DECLARE_LINK_MODE_MASK()));

 efx->link_advertising[0] |= ADVERTISED_Autoneg;
 if (advertising[0] & ADVERTISED_Pause)
  efx->wanted_fc |= (EFX_FC_TX | EFX_FC_RX);
 else
  efx->wanted_fc &= ~(EFX_FC_TX | EFX_FC_RX);
 if (advertising[0] & ADVERTISED_Asym_Pause)
  efx->wanted_fc ^= EFX_FC_TX;
}
