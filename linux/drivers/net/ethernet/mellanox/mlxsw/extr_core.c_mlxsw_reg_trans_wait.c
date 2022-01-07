
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_reg_trans {int err; int bulk_list; int emad_status; int type; TYPE_2__* reg; int tid; int retries; int timeout_dw; int completion; struct mlxsw_core* core; } ;
struct mlxsw_core {TYPE_1__* bus_info; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int dev; } ;


 int MLXSW_EMAD_MAX_RETRY ;
 int cancel_delayed_work_sync (int *) ;
 int dev_err (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int dev_warn (int ,char*,int ,int ,int ) ;
 int kfree_rcu (struct mlxsw_reg_trans*,int ) ;
 int list_del (int *) ;
 int mlxsw_core_reg_access_type_str (int ) ;
 int mlxsw_emad_op_tlv_status_str (int ) ;
 int mlxsw_reg_id_str (int ) ;
 int priv_to_devlink (struct mlxsw_core*) ;
 int rcu ;
 int trace_devlink_hwerr (int ,int ,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int mlxsw_reg_trans_wait(struct mlxsw_reg_trans *trans)
{
 struct mlxsw_core *mlxsw_core = trans->core;
 int err;

 wait_for_completion(&trans->completion);
 cancel_delayed_work_sync(&trans->timeout_dw);
 err = trans->err;

 if (trans->retries)
  dev_warn(mlxsw_core->bus_info->dev, "EMAD retries (%d/%d) (tid=%llx)\n",
    trans->retries, MLXSW_EMAD_MAX_RETRY, trans->tid);
 if (err) {
  dev_err(mlxsw_core->bus_info->dev, "EMAD reg access failed (tid=%llx,reg_id=%x(%s),type=%s,status=%x(%s))\n",
   trans->tid, trans->reg->id,
   mlxsw_reg_id_str(trans->reg->id),
   mlxsw_core_reg_access_type_str(trans->type),
   trans->emad_status,
   mlxsw_emad_op_tlv_status_str(trans->emad_status));
  trace_devlink_hwerr(priv_to_devlink(mlxsw_core),
        trans->emad_status,
        mlxsw_emad_op_tlv_status_str(trans->emad_status));
 }

 list_del(&trans->bulk_list);
 kfree_rcu(trans, rcu);
 return err;
}
