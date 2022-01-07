
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwtstamp_config {int rx_filter; int tx_type; } ;
struct efx_nic {int dummy; } ;


 int ERANGE ;
 int HWTSTAMP_TX_OFF ;
 int efx_ef10_ptp_set_ts_sync_events (struct efx_nic*,int,int) ;
 int efx_ptp_change_mode (struct efx_nic*,int,int ) ;

__attribute__((used)) static int efx_ef10_ptp_set_ts_config(struct efx_nic *efx,
          struct hwtstamp_config *init)
{
 int rc;

 switch (init->rx_filter) {
 case 141:
  efx_ef10_ptp_set_ts_sync_events(efx, 0, 0);

  return efx_ptp_change_mode(efx,
        init->tx_type != HWTSTAMP_TX_OFF, 0);
 case 142:
 case 138:
 case 137:
 case 139:
 case 130:
 case 129:
 case 131:
 case 133:
 case 132:
 case 134:
 case 135:
 case 128:
 case 136:
 case 140:
  init->rx_filter = 142;
  rc = efx_ptp_change_mode(efx, 1, 0);
  if (!rc)
   rc = efx_ef10_ptp_set_ts_sync_events(efx, 1, 0);
  if (rc)
   efx_ptp_change_mode(efx, 0, 0);
  return rc;
 default:
  return -ERANGE;
 }
}
