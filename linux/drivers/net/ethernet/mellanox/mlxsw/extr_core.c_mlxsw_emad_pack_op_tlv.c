
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_reg_info {int id; } ;
typedef enum mlxsw_core_reg_access_type { ____Placeholder_mlxsw_core_reg_access_type } mlxsw_core_reg_access_type ;


 int MLXSW_CORE_REG_ACCESS_TYPE_QUERY ;
 int MLXSW_EMAD_OP_TLV_CLASS_REG_ACCESS ;
 int MLXSW_EMAD_OP_TLV_LEN ;
 int MLXSW_EMAD_OP_TLV_METHOD_QUERY ;
 int MLXSW_EMAD_OP_TLV_METHOD_WRITE ;
 int MLXSW_EMAD_OP_TLV_REQUEST ;
 int MLXSW_EMAD_TLV_TYPE_OP ;
 int mlxsw_emad_op_tlv_class_set (char*,int ) ;
 int mlxsw_emad_op_tlv_dr_set (char*,int ) ;
 int mlxsw_emad_op_tlv_len_set (char*,int ) ;
 int mlxsw_emad_op_tlv_method_set (char*,int ) ;
 int mlxsw_emad_op_tlv_r_set (char*,int ) ;
 int mlxsw_emad_op_tlv_register_id_set (char*,int ) ;
 int mlxsw_emad_op_tlv_status_set (char*,int ) ;
 int mlxsw_emad_op_tlv_tid_set (char*,int ) ;
 int mlxsw_emad_op_tlv_type_set (char*,int ) ;

__attribute__((used)) static void mlxsw_emad_pack_op_tlv(char *op_tlv,
       const struct mlxsw_reg_info *reg,
       enum mlxsw_core_reg_access_type type,
       u64 tid)
{
 mlxsw_emad_op_tlv_type_set(op_tlv, MLXSW_EMAD_TLV_TYPE_OP);
 mlxsw_emad_op_tlv_len_set(op_tlv, MLXSW_EMAD_OP_TLV_LEN);
 mlxsw_emad_op_tlv_dr_set(op_tlv, 0);
 mlxsw_emad_op_tlv_status_set(op_tlv, 0);
 mlxsw_emad_op_tlv_register_id_set(op_tlv, reg->id);
 mlxsw_emad_op_tlv_r_set(op_tlv, MLXSW_EMAD_OP_TLV_REQUEST);
 if (type == MLXSW_CORE_REG_ACCESS_TYPE_QUERY)
  mlxsw_emad_op_tlv_method_set(op_tlv,
          MLXSW_EMAD_OP_TLV_METHOD_QUERY);
 else
  mlxsw_emad_op_tlv_method_set(op_tlv,
          MLXSW_EMAD_OP_TLV_METHOD_WRITE);
 mlxsw_emad_op_tlv_class_set(op_tlv,
        MLXSW_EMAD_OP_TLV_CLASS_REG_ACCESS);
 mlxsw_emad_op_tlv_tid_set(op_tlv, tid);
}
