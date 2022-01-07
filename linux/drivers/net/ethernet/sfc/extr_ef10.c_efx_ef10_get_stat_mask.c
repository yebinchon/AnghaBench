
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct efx_nic {scalar_t__ num_mac_stats; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int datapath_caps; int datapath_caps2; } ;


 int BITS_TO_LONGS (int ) ;
 int BUILD_BUG_ON (int) ;
 unsigned long long EF10_CTPIO_STAT_MASK ;
 unsigned long long EF10_FEC_STAT_MASK ;
 int EF10_STAT_COUNT ;
 int EF10_STAT_V1_COUNT ;
 unsigned long long EF10_STAT_rx_unicast ;
 int MC_CMD_GET_CAPABILITIES_OUT_EVB_LBN ;
 int MC_CMD_GET_CAPABILITIES_V4_OUT_CTPIO_LBN ;
 scalar_t__ MC_CMD_MAC_NSTATS_V2 ;
 scalar_t__ MC_CMD_MAC_NSTATS_V3 ;
 unsigned long long efx_ef10_raw_stat_mask (struct efx_nic*) ;

__attribute__((used)) static void efx_ef10_get_stat_mask(struct efx_nic *efx, unsigned long *mask)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 u64 raw_mask[2];

 raw_mask[0] = efx_ef10_raw_stat_mask(efx);


 if (nic_data->datapath_caps &
     (1 << MC_CMD_GET_CAPABILITIES_OUT_EVB_LBN)) {
  raw_mask[0] |= ~((1ULL << EF10_STAT_rx_unicast) - 1);
  raw_mask[1] = (1ULL << (EF10_STAT_V1_COUNT - 64)) - 1;
 } else {
  raw_mask[1] = 0;
 }

 if (efx->num_mac_stats >= MC_CMD_MAC_NSTATS_V2)
  raw_mask[1] |= EF10_FEC_STAT_MASK;





 if (efx->num_mac_stats >= MC_CMD_MAC_NSTATS_V3 &&
     (nic_data->datapath_caps2 &
      (1 << MC_CMD_GET_CAPABILITIES_V4_OUT_CTPIO_LBN)))
  raw_mask[1] |= EF10_CTPIO_STAT_MASK;






 BUILD_BUG_ON(BITS_TO_LONGS(EF10_STAT_COUNT) != 3);
 mask[0] = raw_mask[0] & 0xffffffff;
 mask[1] = raw_mask[0] >> 32;
 mask[2] = raw_mask[1] & 0xffffffff;

}
