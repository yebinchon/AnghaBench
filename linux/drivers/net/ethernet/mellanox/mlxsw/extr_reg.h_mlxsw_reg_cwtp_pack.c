
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_CWTP_MAX_PROFILE ;
 int MLXSW_REG_CWTP_MIN_VALUE ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int cwtp ;
 int mlxsw_reg_cwtp_local_port_set (char*,int ) ;
 int mlxsw_reg_cwtp_profile_max_set (char*,int,int ) ;
 int mlxsw_reg_cwtp_profile_min_set (char*,int,int ) ;
 int mlxsw_reg_cwtp_traffic_class_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_cwtp_pack(char *payload, u8 local_port,
           u8 traffic_class)
{
 int i;

 MLXSW_REG_ZERO(cwtp, payload);
 mlxsw_reg_cwtp_local_port_set(payload, local_port);
 mlxsw_reg_cwtp_traffic_class_set(payload, traffic_class);

 for (i = 0; i <= MLXSW_REG_CWTP_MAX_PROFILE; i++) {
  mlxsw_reg_cwtp_profile_min_set(payload, i,
            MLXSW_REG_CWTP_MIN_VALUE);
  mlxsw_reg_cwtp_profile_max_set(payload, i,
            MLXSW_REG_CWTP_MIN_VALUE);
 }
}
