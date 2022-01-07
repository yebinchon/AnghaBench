
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_ritr_rif_set (char*,int ) ;
 int ritr ;

__attribute__((used)) static inline void mlxsw_reg_ritr_rif_pack(char *payload, u16 rif)
{
 MLXSW_REG_ZERO(ritr, payload);
 mlxsw_reg_ritr_rif_set(payload, rif);
}
