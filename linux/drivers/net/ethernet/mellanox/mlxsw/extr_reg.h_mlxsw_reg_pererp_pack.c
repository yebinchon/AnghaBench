
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_pererp_ctcam_le_set (char*,int) ;
 int mlxsw_reg_pererp_erpt_bank_pointer_set (char*,int ) ;
 int mlxsw_reg_pererp_erpt_pointer_set (char*,int ) ;
 int mlxsw_reg_pererp_erpt_pointer_valid_set (char*,int) ;
 int mlxsw_reg_pererp_master_rp_id_set (char*,int ) ;
 int mlxsw_reg_pererp_region_id_set (char*,int ) ;
 int pererp ;

__attribute__((used)) static inline void mlxsw_reg_pererp_pack(char *payload, u16 region_id,
      bool ctcam_le, bool erpt_pointer_valid,
      u8 erpt_bank_pointer, u8 erpt_pointer,
      u8 master_rp_id)
{
 MLXSW_REG_ZERO(pererp, payload);
 mlxsw_reg_pererp_region_id_set(payload, region_id);
 mlxsw_reg_pererp_ctcam_le_set(payload, ctcam_le);
 mlxsw_reg_pererp_erpt_pointer_valid_set(payload, erpt_pointer_valid);
 mlxsw_reg_pererp_erpt_bank_pointer_set(payload, erpt_bank_pointer);
 mlxsw_reg_pererp_erpt_pointer_set(payload, erpt_pointer);
 mlxsw_reg_pererp_master_rp_id_set(payload, master_rp_id);
}
