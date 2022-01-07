
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {TYPE_1__* phy_op; } ;
struct TYPE_2__ {int (* reconfigure ) (struct ef4_nic*) ;int (* poll ) (struct ef4_nic*) ;} ;


 int BUG_ON (int) ;
 scalar_t__ EF4_REV_FALCON_B0 ;
 scalar_t__ LOOPBACK_INTERNAL (struct ef4_nic*) ;
 int WARN_ON (int) ;
 int ef4_link_status_changed (struct ef4_nic*) ;
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;
 int falcon_deconfigure_mac_wrapper (struct ef4_nic*) ;
 int falcon_loopback_link_poll (struct ef4_nic*) ;
 int falcon_reconfigure_xmac (struct ef4_nic*) ;
 int falcon_reset_macs (struct ef4_nic*) ;
 int falcon_start_nic_stats (struct ef4_nic*) ;
 int falcon_stop_nic_stats (struct ef4_nic*) ;
 int stub1 (struct ef4_nic*) ;
 int stub2 (struct ef4_nic*) ;

__attribute__((used)) static int falcon_reconfigure_port(struct ef4_nic *efx)
{
 int rc;

 WARN_ON(ef4_nic_rev(efx) > EF4_REV_FALCON_B0);





 if (LOOPBACK_INTERNAL(efx))
  falcon_loopback_link_poll(efx);
 else
  efx->phy_op->poll(efx);

 falcon_stop_nic_stats(efx);
 falcon_deconfigure_mac_wrapper(efx);

 falcon_reset_macs(efx);

 efx->phy_op->reconfigure(efx);
 rc = falcon_reconfigure_xmac(efx);
 BUG_ON(rc);

 falcon_start_nic_stats(efx);


 ef4_link_status_changed(efx);

 return 0;
}
