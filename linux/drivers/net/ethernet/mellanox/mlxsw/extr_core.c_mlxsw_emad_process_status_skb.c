
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef enum mlxsw_emad_op_tlv_status { ____Placeholder_mlxsw_emad_op_tlv_status } mlxsw_emad_op_tlv_status ;


 int mlxsw_emad_op_tlv (struct sk_buff*) ;
 int mlxsw_emad_process_status (int ,int*) ;

__attribute__((used)) static int
mlxsw_emad_process_status_skb(struct sk_buff *skb,
         enum mlxsw_emad_op_tlv_status *p_status)
{
 return mlxsw_emad_process_status(mlxsw_emad_op_tlv(skb), p_status);
}
