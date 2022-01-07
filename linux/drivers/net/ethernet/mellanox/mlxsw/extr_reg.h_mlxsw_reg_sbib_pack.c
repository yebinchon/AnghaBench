
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sbib_buff_size_set (char*,int ) ;
 int mlxsw_reg_sbib_local_port_set (char*,int ) ;
 int sbib ;

__attribute__((used)) static inline void mlxsw_reg_sbib_pack(char *payload, u8 local_port,
           u32 buff_size)
{
 MLXSW_REG_ZERO(sbib, payload);
 mlxsw_reg_sbib_local_port_set(payload, local_port);
 mlxsw_reg_sbib_buff_size_set(payload, buff_size);
}
