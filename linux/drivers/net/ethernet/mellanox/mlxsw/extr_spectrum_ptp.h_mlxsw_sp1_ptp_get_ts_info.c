
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;
struct ethtool_ts_info {int dummy; } ;


 int mlxsw_sp_ptp_get_ts_info_noptp (struct ethtool_ts_info*) ;

__attribute__((used)) static inline int mlxsw_sp1_ptp_get_ts_info(struct mlxsw_sp *mlxsw_sp,
         struct ethtool_ts_info *info)
{
 return mlxsw_sp_ptp_get_ts_info_noptp(info);
}
