
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int complete; } ;
struct mlx5_fpga_tls_command_context {int list; TYPE_1__ buf; int (* complete ) (int ,struct mlx5_fpga_device*,struct mlx5_fpga_tls_command_context*,int *) ;int ref; } ;
struct mlx5_fpga_tls {int pending_cmds_lock; int conn; int pending_cmds; } ;
struct mlx5_fpga_device {struct mlx5_fpga_tls* tls; } ;
typedef int (* mlx5_fpga_tls_command_complete ) (int ,struct mlx5_fpga_device*,struct mlx5_fpga_tls_command_context*,int *) ;


 scalar_t__ likely (int) ;
 int list_add_tail (int *,int *) ;
 int mlx5_fpga_cmd_send_complete ;
 int mlx5_fpga_sbu_conn_sendmsg (int ,TYPE_1__*) ;
 int refcount_set (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mlx5_fpga_tls_cmd_send(struct mlx5_fpga_device *fdev,
       struct mlx5_fpga_tls_command_context *cmd,
       mlx5_fpga_tls_command_complete complete)
{
 struct mlx5_fpga_tls *tls = fdev->tls;
 unsigned long flags;
 int ret;

 refcount_set(&cmd->ref, 2);
 cmd->complete = complete;
 cmd->buf.complete = mlx5_fpga_cmd_send_complete;

 spin_lock_irqsave(&tls->pending_cmds_lock, flags);




 ret = mlx5_fpga_sbu_conn_sendmsg(tls->conn, &cmd->buf);
 if (likely(!ret))
  list_add_tail(&cmd->list, &tls->pending_cmds);
 else
  complete(tls->conn, fdev, cmd, ((void*)0));
 spin_unlock_irqrestore(&tls->pending_cmds_lock, flags);
}
