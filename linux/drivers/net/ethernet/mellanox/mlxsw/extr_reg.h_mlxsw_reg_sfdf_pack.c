
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlxsw_reg_sfdf_flush_type { ____Placeholder_mlxsw_reg_sfdf_flush_type } mlxsw_reg_sfdf_flush_type ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sfdf_flush_static_set (char*,int) ;
 int mlxsw_reg_sfdf_flush_type_set (char*,int) ;
 int sfdf ;

__attribute__((used)) static inline void mlxsw_reg_sfdf_pack(char *payload,
           enum mlxsw_reg_sfdf_flush_type type)
{
 MLXSW_REG_ZERO(sfdf, payload);
 mlxsw_reg_sfdf_flush_type_set(payload, type);
 mlxsw_reg_sfdf_flush_static_set(payload, 1);
}
