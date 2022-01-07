
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_REG_SFN_REC_MAX_COUNT ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sfn_end_set (char*,int) ;
 int mlxsw_reg_sfn_num_rec_set (char*,int ) ;
 int mlxsw_reg_sfn_swid_set (char*,int ) ;
 int sfn ;

__attribute__((used)) static inline void mlxsw_reg_sfn_pack(char *payload)
{
 MLXSW_REG_ZERO(sfn, payload);
 mlxsw_reg_sfn_swid_set(payload, 0);
 mlxsw_reg_sfn_end_set(payload, 1);
 mlxsw_reg_sfn_num_rec_set(payload, MLXSW_REG_SFN_REC_MAX_COUNT);
}
