
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sk_buff {int dummy; } ;


 char* mlxsw_emad_op_tlv (struct sk_buff const*) ;
 int mlxsw_emad_op_tlv_tid_get (char*) ;

__attribute__((used)) static u64 mlxsw_emad_get_tid(const struct sk_buff *skb)
{
 char *op_tlv;

 op_tlv = mlxsw_emad_op_tlv(skb);
 return mlxsw_emad_op_tlv_tid_get(op_tlv);
}
