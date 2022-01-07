
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_nic {int ptp_data; } ;


 int PTP_STAT_COUNT ;
 size_t efx_nic_describe_stats (int ,int ,int ,int *) ;
 int efx_ptp_stat_desc ;
 int efx_ptp_stat_mask ;

size_t efx_ptp_describe_stats(struct efx_nic *efx, u8 *strings)
{
 if (!efx->ptp_data)
  return 0;

 return efx_nic_describe_stats(efx_ptp_stat_desc, PTP_STAT_COUNT,
          efx_ptp_stat_mask, strings);
}
