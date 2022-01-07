
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_EMAD_END_TLV_LEN ;
 int MLXSW_EMAD_TLV_TYPE_END ;
 int mlxsw_emad_end_tlv_len_set (char*,int ) ;
 int mlxsw_emad_end_tlv_type_set (char*,int ) ;

__attribute__((used)) static void mlxsw_emad_pack_end_tlv(char *end_tlv)
{
 mlxsw_emad_end_tlv_type_set(end_tlv, MLXSW_EMAD_TLV_TYPE_END);
 mlxsw_emad_end_tlv_len_set(end_tlv, MLXSW_EMAD_END_TLV_LEN);
}
