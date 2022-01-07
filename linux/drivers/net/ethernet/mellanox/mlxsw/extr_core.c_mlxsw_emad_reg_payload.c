
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLXSW_EMAD_OP_TLV_LEN ;

__attribute__((used)) static char *mlxsw_emad_reg_payload(const char *op_tlv)
{
 return ((char *) (op_tlv + (MLXSW_EMAD_OP_TLV_LEN + 1) * sizeof(u32)));
}
