
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sp_acl_bf {int dummy; } ;
struct mlxsw_sp_acl_atcam_region {int dummy; } ;
struct mlxsw_sp_acl_atcam_entry {int dummy; } ;


 int MLXSW_BLOOM_KEY_LEN ;
 unsigned int mlxsw_sp_acl_bf_crc (char*,int ) ;
 int mlxsw_sp_acl_bf_key_encode (struct mlxsw_sp_acl_atcam_region*,struct mlxsw_sp_acl_atcam_entry*,char*,int *) ;

__attribute__((used)) static unsigned int
mlxsw_sp_acl_bf_index_get(struct mlxsw_sp_acl_bf *bf,
     struct mlxsw_sp_acl_atcam_region *aregion,
     struct mlxsw_sp_acl_atcam_entry *aentry)
{
 char bf_key[MLXSW_BLOOM_KEY_LEN];
 u8 bf_size;

 mlxsw_sp_acl_bf_key_encode(aregion, aentry, bf_key, &bf_size);
 return mlxsw_sp_acl_bf_crc(bf_key, bf_size);
}
