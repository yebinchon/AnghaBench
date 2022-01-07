
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5e_txqsq {int sqn; int ch_ix; int txq_ix; int cc; int pc; int cq; int txq; TYPE_1__* channel; } ;
struct mlx5e_priv {int mdev; } ;
struct devlink_fmsg {int dummy; } ;
struct TYPE_2__ {struct mlx5e_priv* priv; } ;


 int devlink_fmsg_bool_pair_put (struct devlink_fmsg*,char*,int) ;
 int devlink_fmsg_obj_nest_end (struct devlink_fmsg*) ;
 int devlink_fmsg_obj_nest_start (struct devlink_fmsg*) ;
 int devlink_fmsg_u32_pair_put (struct devlink_fmsg*,char*,int) ;
 int devlink_fmsg_u8_pair_put (struct devlink_fmsg*,char*,int ) ;
 int mlx5_core_query_sq_state (int ,int,int *) ;
 int mlx5e_reporter_cq_diagnose (int *,struct devlink_fmsg*) ;
 int netif_xmit_stopped (int ) ;

__attribute__((used)) static int
mlx5e_tx_reporter_build_diagnose_output(struct devlink_fmsg *fmsg,
     struct mlx5e_txqsq *sq, int tc)
{
 struct mlx5e_priv *priv = sq->channel->priv;
 bool stopped = netif_xmit_stopped(sq->txq);
 u8 state;
 int err;

 err = mlx5_core_query_sq_state(priv->mdev, sq->sqn, &state);
 if (err)
  return err;

 err = devlink_fmsg_obj_nest_start(fmsg);
 if (err)
  return err;

 err = devlink_fmsg_u32_pair_put(fmsg, "channel ix", sq->ch_ix);
 if (err)
  return err;

 err = devlink_fmsg_u32_pair_put(fmsg, "tc", tc);
 if (err)
  return err;

 err = devlink_fmsg_u32_pair_put(fmsg, "txq ix", sq->txq_ix);
 if (err)
  return err;

 err = devlink_fmsg_u32_pair_put(fmsg, "sqn", sq->sqn);
 if (err)
  return err;

 err = devlink_fmsg_u8_pair_put(fmsg, "HW state", state);
 if (err)
  return err;

 err = devlink_fmsg_bool_pair_put(fmsg, "stopped", stopped);
 if (err)
  return err;

 err = devlink_fmsg_u32_pair_put(fmsg, "cc", sq->cc);
 if (err)
  return err;

 err = devlink_fmsg_u32_pair_put(fmsg, "pc", sq->pc);
 if (err)
  return err;

 err = mlx5e_reporter_cq_diagnose(&sq->cq, fmsg);
 if (err)
  return err;

 err = devlink_fmsg_obj_nest_end(fmsg);
 if (err)
  return err;

 return 0;
}
