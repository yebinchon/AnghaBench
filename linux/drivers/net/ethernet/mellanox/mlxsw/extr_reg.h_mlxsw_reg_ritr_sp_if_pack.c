
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int mlxsw_reg_ritr_sp_if_lag_set (char*,int) ;
 int mlxsw_reg_ritr_sp_if_system_port_set (char*,int ) ;
 int mlxsw_reg_ritr_sp_if_vid_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_ritr_sp_if_pack(char *payload, bool lag,
          u16 system_port, u16 vid)
{
 mlxsw_reg_ritr_sp_if_lag_set(payload, lag);
 mlxsw_reg_ritr_sp_if_system_port_set(payload, system_port);
 mlxsw_reg_ritr_sp_if_vid_set(payload, vid);
}
