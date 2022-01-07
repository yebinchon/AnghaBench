
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_link_state {int speed; int up; } ;
struct ef4_nic {int unicast_filter; int reset_pending; struct ef4_link_state link_state; } ;
typedef int ef4_oword_t ;


 int EF4_POPULATE_OWORD_5 (int ,int ,int,int ,int,int ,int,int ,int,int ,int) ;
 scalar_t__ EF4_REV_FALCON_B0 ;
 int EF4_SET_OWORD_FIELD (int ,int ,int) ;
 int FRF_AB_MAC_BCAD_ACPT ;
 int FRF_AB_MAC_LINK_STATUS ;
 int FRF_AB_MAC_SPEED ;
 int FRF_AB_MAC_UC_PROM ;
 int FRF_AB_MAC_XOFF_VAL ;
 int FRF_AZ_RX_XOFF_MAC_EN ;
 int FRF_BB_TXFIFO_DRAIN_EN ;
 int FRF_BZ_RX_INGR_EN ;
 int FR_AB_MAC_CTRL ;
 int FR_AZ_RX_CFG ;
 int READ_ONCE (int ) ;
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;
 int falcon_push_multicast_hash (struct ef4_nic*) ;

__attribute__((used)) static void falcon_reconfigure_mac_wrapper(struct ef4_nic *efx)
{
 struct ef4_link_state *link_state = &efx->link_state;
 ef4_oword_t reg;
 int link_speed, isolate;

 isolate = !!READ_ONCE(efx->reset_pending);

 switch (link_state->speed) {
 case 10000: link_speed = 3; break;
 case 1000: link_speed = 2; break;
 case 100: link_speed = 1; break;
 default: link_speed = 0; break;
 }





 EF4_POPULATE_OWORD_5(reg,
        FRF_AB_MAC_XOFF_VAL, 0xffff ,
        FRF_AB_MAC_BCAD_ACPT, 1,
        FRF_AB_MAC_UC_PROM, !efx->unicast_filter,
        FRF_AB_MAC_LINK_STATUS, 1,
        FRF_AB_MAC_SPEED, link_speed);


 if (ef4_nic_rev(efx) >= EF4_REV_FALCON_B0) {
  EF4_SET_OWORD_FIELD(reg, FRF_BB_TXFIFO_DRAIN_EN,
        !link_state->up || isolate);
 }

 ef4_writeo(efx, &reg, FR_AB_MAC_CTRL);


 falcon_push_multicast_hash(efx);

 ef4_reado(efx, &reg, FR_AZ_RX_CFG);


 EF4_SET_OWORD_FIELD(reg, FRF_AZ_RX_XOFF_MAC_EN, 1);

 if (ef4_nic_rev(efx) >= EF4_REV_FALCON_B0)
  EF4_SET_OWORD_FIELD(reg, FRF_BZ_RX_INGR_EN, !isolate);
 ef4_writeo(efx, &reg, FR_AZ_RX_CFG);
}
