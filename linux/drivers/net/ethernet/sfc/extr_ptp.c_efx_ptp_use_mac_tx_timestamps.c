
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int datapath_caps2; } ;


 scalar_t__ EFX_REV_HUNT_A0 ;
 int MC_CMD_GET_CAPABILITIES_V2_OUT_TX_MAC_TIMESTAMPING_LBN ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;

bool efx_ptp_use_mac_tx_timestamps(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;

 return ((efx_nic_rev(efx) >= EFX_REV_HUNT_A0) &&
  (nic_data->datapath_caps2 &
   (1 << MC_CMD_GET_CAPABILITIES_V2_OUT_TX_MAC_TIMESTAMPING_LBN)
  ));
}
