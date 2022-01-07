
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwtstamp_config {int rx_filter; int tx_type; } ;
struct efx_nic {int dummy; } ;


 int ERANGE ;







 int HWTSTAMP_TX_OFF ;
 int MC_CMD_PTP_MODE_V1 ;
 int MC_CMD_PTP_MODE_V2 ;
 int MC_CMD_PTP_MODE_V2_ENHANCED ;
 int efx_ptp_change_mode (struct efx_nic*,int,int ) ;
 int efx_ptp_get_mode (struct efx_nic*) ;

__attribute__((used)) static int siena_ptp_set_ts_config(struct efx_nic *efx,
       struct hwtstamp_config *init)
{
 int rc;

 switch (init->rx_filter) {
 case 134:

  return efx_ptp_change_mode(efx,
        init->tx_type != HWTSTAMP_TX_OFF,
        efx_ptp_get_mode(efx));
 case 132:
 case 131:
 case 133:
  init->rx_filter = 132;
  return efx_ptp_change_mode(efx, 1, MC_CMD_PTP_MODE_V1);
 case 129:
 case 128:
 case 130:
  init->rx_filter = 129;
  rc = efx_ptp_change_mode(efx, 1,
      MC_CMD_PTP_MODE_V2_ENHANCED);





  if (rc != 0)
   rc = efx_ptp_change_mode(efx, 1, MC_CMD_PTP_MODE_V2);
  return rc;
 default:
  return -ERANGE;
 }
}
