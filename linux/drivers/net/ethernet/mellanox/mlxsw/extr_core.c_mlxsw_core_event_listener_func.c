
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct mlxsw_reg_info {int len; int id; } ;
struct TYPE_2__ {int (* func ) (struct mlxsw_reg_info*,char*,int ) ;} ;
struct mlxsw_event_listener_item {int priv; TYPE_1__ el; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 char* mlxsw_emad_op_tlv (struct sk_buff*) ;
 int mlxsw_emad_op_tlv_register_id_get (char*) ;
 char* mlxsw_emad_reg_payload (char*) ;
 char* mlxsw_emad_reg_tlv (struct sk_buff*) ;
 int mlxsw_emad_reg_tlv_len_get (char*) ;
 int stub1 (struct mlxsw_reg_info*,char*,int ) ;

__attribute__((used)) static void mlxsw_core_event_listener_func(struct sk_buff *skb, u8 local_port,
        void *priv)
{
 struct mlxsw_event_listener_item *event_listener_item = priv;
 struct mlxsw_reg_info reg;
 char *payload;
 char *op_tlv = mlxsw_emad_op_tlv(skb);
 char *reg_tlv = mlxsw_emad_reg_tlv(skb);

 reg.id = mlxsw_emad_op_tlv_register_id_get(op_tlv);
 reg.len = (mlxsw_emad_reg_tlv_len_get(reg_tlv) - 1) * sizeof(u32);
 payload = mlxsw_emad_reg_payload(op_tlv);
 event_listener_item->el.func(&reg, payload, event_listener_item->priv);
 dev_kfree_skb(skb);
}
