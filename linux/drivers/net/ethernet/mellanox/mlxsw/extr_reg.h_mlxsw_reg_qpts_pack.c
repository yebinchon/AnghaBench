
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mlxsw_reg_qpts_trust_state { ____Placeholder_mlxsw_reg_qpts_trust_state } mlxsw_reg_qpts_trust_state ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_qpts_local_port_set (char*,int ) ;
 int mlxsw_reg_qpts_trust_state_set (char*,int) ;
 int qpts ;

__attribute__((used)) static inline void mlxsw_reg_qpts_pack(char *payload, u8 local_port,
           enum mlxsw_reg_qpts_trust_state ts)
{
 MLXSW_REG_ZERO(qpts, payload);

 mlxsw_reg_qpts_local_port_set(payload, local_port);
 mlxsw_reg_qpts_trust_state_set(payload, ts);
}
