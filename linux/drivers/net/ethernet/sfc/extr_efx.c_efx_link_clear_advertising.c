
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int wanted_fc; int link_advertising; } ;


 int EFX_FC_RX ;
 int EFX_FC_TX ;
 int __ETHTOOL_LINK_MODE_MASK_NBITS ;
 int bitmap_zero (int ,int ) ;

void efx_link_clear_advertising(struct efx_nic *efx)
{
 bitmap_zero(efx->link_advertising, __ETHTOOL_LINK_MODE_MASK_NBITS);
 efx->wanted_fc &= ~(EFX_FC_TX | EFX_FC_RX);
}
