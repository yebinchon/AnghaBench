
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_acl_tcam_region {int tcam_region_info; int id; int key_type; struct mlxsw_afk_key_info* key_info; } ;
struct mlxsw_sp {int core; } ;
struct mlxsw_afk_key_info {int dummy; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PTAR_LEN ;
 int MLXSW_REG_PTAR_OP_ALLOC ;
 int MLXSW_SP_ACL_TCAM_REGION_BASE_COUNT ;
 int mlxsw_afk_key_info_block_encoding_get (struct mlxsw_afk_key_info*,int) ;
 unsigned int mlxsw_afk_key_info_blocks_count_get (struct mlxsw_afk_key_info*) ;
 int mlxsw_reg_ptar_key_id_pack (char*,int,int ) ;
 int mlxsw_reg_ptar_pack (char*,int ,int ,int ,int ,int ) ;
 int mlxsw_reg_ptar_unpack (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ptar ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_region_alloc(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_acl_tcam_region *region)
{
 struct mlxsw_afk_key_info *key_info = region->key_info;
 char ptar_pl[MLXSW_REG_PTAR_LEN];
 unsigned int encodings_count;
 int i;
 int err;

 mlxsw_reg_ptar_pack(ptar_pl, MLXSW_REG_PTAR_OP_ALLOC,
       region->key_type,
       MLXSW_SP_ACL_TCAM_REGION_BASE_COUNT,
       region->id, region->tcam_region_info);
 encodings_count = mlxsw_afk_key_info_blocks_count_get(key_info);
 for (i = 0; i < encodings_count; i++) {
  u16 encoding;

  encoding = mlxsw_afk_key_info_block_encoding_get(key_info, i);
  mlxsw_reg_ptar_key_id_pack(ptar_pl, i, encoding);
 }
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ptar), ptar_pl);
 if (err)
  return err;
 mlxsw_reg_ptar_unpack(ptar_pl, region->tcam_region_info);
 return 0;
}
