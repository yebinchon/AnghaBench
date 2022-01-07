
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_spaft_allow_prio_tagged_set (char*,int) ;
 int mlxsw_reg_spaft_allow_tagged_set (char*,int) ;
 int mlxsw_reg_spaft_allow_untagged_set (char*,int) ;
 int mlxsw_reg_spaft_local_port_set (char*,int ) ;
 int spaft ;

__attribute__((used)) static inline void mlxsw_reg_spaft_pack(char *payload, u8 local_port,
     bool allow_untagged)
{
 MLXSW_REG_ZERO(spaft, payload);
 mlxsw_reg_spaft_local_port_set(payload, local_port);
 mlxsw_reg_spaft_allow_untagged_set(payload, allow_untagged);
 mlxsw_reg_spaft_allow_prio_tagged_set(payload, allow_untagged);
 mlxsw_reg_spaft_allow_tagged_set(payload, 1);
}
