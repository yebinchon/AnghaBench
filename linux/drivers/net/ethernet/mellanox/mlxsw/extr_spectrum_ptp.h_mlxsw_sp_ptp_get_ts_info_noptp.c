
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethtool_ts_info {int so_timestamping; int phc_index; } ;


 int SOF_TIMESTAMPING_RX_SOFTWARE ;
 int SOF_TIMESTAMPING_SOFTWARE ;

__attribute__((used)) static inline int mlxsw_sp_ptp_get_ts_info_noptp(struct ethtool_ts_info *info)
{
 info->so_timestamping = SOF_TIMESTAMPING_RX_SOFTWARE |
    SOF_TIMESTAMPING_SOFTWARE;
 info->phc_index = -1;
 return 0;
}
