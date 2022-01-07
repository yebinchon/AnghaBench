
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_sfmr_op { ____Placeholder_mlxsw_reg_sfmr_op } mlxsw_reg_sfmr_op ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sfmr_fid_offset_set (char*,int ) ;
 int mlxsw_reg_sfmr_fid_set (char*,int ) ;
 int mlxsw_reg_sfmr_op_set (char*,int) ;
 int mlxsw_reg_sfmr_vtfp_set (char*,int) ;
 int mlxsw_reg_sfmr_vv_set (char*,int) ;
 int sfmr ;

__attribute__((used)) static inline void mlxsw_reg_sfmr_pack(char *payload,
           enum mlxsw_reg_sfmr_op op, u16 fid,
           u16 fid_offset)
{
 MLXSW_REG_ZERO(sfmr, payload);
 mlxsw_reg_sfmr_op_set(payload, op);
 mlxsw_reg_sfmr_fid_set(payload, fid);
 mlxsw_reg_sfmr_fid_offset_set(payload, fid_offset);
 mlxsw_reg_sfmr_vtfp_set(payload, 0);
 mlxsw_reg_sfmr_vv_set(payload, 0);
}
