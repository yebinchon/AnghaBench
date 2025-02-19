
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_reg_trans {scalar_t__ retries; int core; } ;
struct mlxsw_core {int dummy; } ;


 int EIO ;
 scalar_t__ MLXSW_EMAD_MAX_RETRY ;
 int mlxsw_emad_trans_finish (struct mlxsw_reg_trans*,int) ;
 int mlxsw_emad_transmit (int ,struct mlxsw_reg_trans*) ;

__attribute__((used)) static void mlxsw_emad_transmit_retry(struct mlxsw_core *mlxsw_core,
          struct mlxsw_reg_trans *trans)
{
 int err;

 if (trans->retries < MLXSW_EMAD_MAX_RETRY) {
  trans->retries++;
  err = mlxsw_emad_transmit(trans->core, trans);
  if (err == 0)
   return;
 } else {
  err = -EIO;
 }
 mlxsw_emad_trans_finish(trans, err);
}
