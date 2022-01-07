
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mlxsw_reg_mtutc_operation { ____Placeholder_mlxsw_reg_mtutc_operation } mlxsw_reg_mtutc_operation ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_mtutc_freq_adjustment_set (char*,int ) ;
 int mlxsw_reg_mtutc_operation_set (char*,int) ;
 int mlxsw_reg_mtutc_utc_sec_set (char*,int ) ;
 int mtutc ;

__attribute__((used)) static inline void
mlxsw_reg_mtutc_pack(char *payload, enum mlxsw_reg_mtutc_operation oper,
       u32 freq_adj, u32 utc_sec)
{
 MLXSW_REG_ZERO(mtutc, payload);
 mlxsw_reg_mtutc_operation_set(payload, oper);
 mlxsw_reg_mtutc_freq_adjustment_set(payload, freq_adj);
 mlxsw_reg_mtutc_utc_sec_set(payload, utc_sec);
}
