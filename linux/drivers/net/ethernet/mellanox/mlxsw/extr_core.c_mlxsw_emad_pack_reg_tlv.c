
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_reg_info {int len; } ;


 int MLXSW_EMAD_TLV_TYPE_REG ;
 int memcpy (char*,char*,int) ;
 int mlxsw_emad_reg_tlv_len_set (char*,int) ;
 int mlxsw_emad_reg_tlv_type_set (char*,int ) ;

__attribute__((used)) static void mlxsw_emad_pack_reg_tlv(char *reg_tlv,
        const struct mlxsw_reg_info *reg,
        char *payload)
{
 mlxsw_emad_reg_tlv_type_set(reg_tlv, MLXSW_EMAD_TLV_TYPE_REG);
 mlxsw_emad_reg_tlv_len_set(reg_tlv, reg->len / sizeof(u32) + 1);
 memcpy(reg_tlv + sizeof(u32), payload, reg->len);
}
