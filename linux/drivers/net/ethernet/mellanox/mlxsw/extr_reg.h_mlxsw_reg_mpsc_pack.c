
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_mpsc_e_set (char*,int) ;
 int mlxsw_reg_mpsc_local_port_set (char*,int ) ;
 int mlxsw_reg_mpsc_rate_set (char*,int ) ;
 int mpsc ;

__attribute__((used)) static inline void mlxsw_reg_mpsc_pack(char *payload, u8 local_port, bool e,
           u32 rate)
{
 MLXSW_REG_ZERO(mpsc, payload);
 mlxsw_reg_mpsc_local_port_set(payload, local_port);
 mlxsw_reg_mpsc_e_set(payload, e);
 mlxsw_reg_mpsc_rate_set(payload, rate);
}
