
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_ritr_if_type { ____Placeholder_mlxsw_reg_ritr_if_type } mlxsw_reg_ritr_if_type ;


 int MLXSW_REG_RITR_FID_IF ;
 int mlxsw_reg_ritr_fid_if_fid_set (char*,int ) ;
 int mlxsw_reg_ritr_vlan_if_vid_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_ritr_fid_set(char *payload,
       enum mlxsw_reg_ritr_if_type rif_type,
       u16 fid)
{
 if (rif_type == MLXSW_REG_RITR_FID_IF)
  mlxsw_reg_ritr_fid_if_fid_set(payload, fid);
 else
  mlxsw_reg_ritr_vlan_if_vid_set(payload, fid);
}
