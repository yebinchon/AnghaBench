
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_MLCR_DURATION_MAX ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlcr ;
 int mlxsw_reg_mlcr_beacon_duration_set (char*,int ) ;
 int mlxsw_reg_mlcr_local_port_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_mlcr_pack(char *payload, u8 local_port,
           bool active)
{
 MLXSW_REG_ZERO(mlcr, payload);
 mlxsw_reg_mlcr_local_port_set(payload, local_port);
 mlxsw_reg_mlcr_beacon_duration_set(payload, active ?
        MLXSW_REG_MLCR_DURATION_MAX : 0);
}
