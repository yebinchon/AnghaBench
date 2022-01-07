
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct mlxsw_reg_info {int len; } ;
typedef enum mlxsw_core_reg_access_type { ____Placeholder_mlxsw_core_reg_access_type } mlxsw_core_reg_access_type ;


 int MLXSW_EMAD_END_TLV_LEN ;
 int MLXSW_EMAD_OP_TLV_LEN ;
 int mlxsw_emad_construct_eth_hdr (struct sk_buff*) ;
 int mlxsw_emad_pack_end_tlv (char*) ;
 int mlxsw_emad_pack_op_tlv (char*,struct mlxsw_reg_info const*,int,int ) ;
 int mlxsw_emad_pack_reg_tlv (char*,struct mlxsw_reg_info const*,char*) ;
 char* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static void mlxsw_emad_construct(struct sk_buff *skb,
     const struct mlxsw_reg_info *reg,
     char *payload,
     enum mlxsw_core_reg_access_type type,
     u64 tid)
{
 char *buf;

 buf = skb_push(skb, MLXSW_EMAD_END_TLV_LEN * sizeof(u32));
 mlxsw_emad_pack_end_tlv(buf);

 buf = skb_push(skb, reg->len + sizeof(u32));
 mlxsw_emad_pack_reg_tlv(buf, reg, payload);

 buf = skb_push(skb, MLXSW_EMAD_OP_TLV_LEN * sizeof(u32));
 mlxsw_emad_pack_op_tlv(buf, reg, type, tid);

 mlxsw_emad_construct_eth_hdr(skb);
}
