
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mlxsw_reg_trans {int cb_priv; TYPE_1__* reg; int (* cb ) (struct mlxsw_core*,int ,int ,int ) ;int emad_status; int active; } ;
struct mlxsw_core {int dummy; } ;
struct TYPE_2__ {int len; } ;


 int EAGAIN ;
 int atomic_dec_and_test (int *) ;
 char* mlxsw_emad_op_tlv (struct sk_buff*) ;
 int mlxsw_emad_process_status_skb (struct sk_buff*,int *) ;
 int mlxsw_emad_reg_payload (char*) ;
 int mlxsw_emad_trans_finish (struct mlxsw_reg_trans*,int) ;
 int mlxsw_emad_transmit_retry (struct mlxsw_core*,struct mlxsw_reg_trans*) ;
 int stub1 (struct mlxsw_core*,int ,int ,int ) ;

__attribute__((used)) static void mlxsw_emad_process_response(struct mlxsw_core *mlxsw_core,
     struct mlxsw_reg_trans *trans,
     struct sk_buff *skb)
{
 int err;

 if (!atomic_dec_and_test(&trans->active))
  return;

 err = mlxsw_emad_process_status_skb(skb, &trans->emad_status);
 if (err == -EAGAIN) {
  mlxsw_emad_transmit_retry(mlxsw_core, trans);
 } else {
  if (err == 0) {
   char *op_tlv = mlxsw_emad_op_tlv(skb);

   if (trans->cb)
    trans->cb(mlxsw_core,
       mlxsw_emad_reg_payload(op_tlv),
       trans->reg->len, trans->cb_priv);
  }
  mlxsw_emad_trans_finish(trans, err);
 }
}
