
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int dummy; } ;
struct hwtstamp_config {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int
mlxsw_sp2_ptp_hwtstamp_get(struct mlxsw_sp_port *mlxsw_sp_port,
      struct hwtstamp_config *config)
{
 return -EOPNOTSUPP;
}
