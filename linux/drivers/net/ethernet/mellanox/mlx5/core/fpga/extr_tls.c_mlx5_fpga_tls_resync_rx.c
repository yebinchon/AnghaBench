
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mlx5_fpga_dma_buf {int complete; TYPE_1__* sg; } ;
struct mlx5_core_dev {TYPE_3__* fpga; } ;
struct TYPE_6__ {TYPE_2__* tls; } ;
struct TYPE_5__ {int conn; int rx_idr; } ;
struct TYPE_4__ {int size; void* data; } ;


 int CMD_RESYNC_RX ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int MLX5_SET64 (int ,void*,int ,int ) ;
 int MLX5_TLS_COMMAND_SIZE ;
 int WARN_ONCE (int,char*) ;
 int be64_to_cpu (int ) ;
 int command_type ;
 void* idr_find (int *,int ) ;
 int kfree (struct mlx5_fpga_dma_buf*) ;
 struct mlx5_fpga_dma_buf* kzalloc (int,int ) ;
 int mlx5_fpga_sbu_conn_sendmsg (int ,struct mlx5_fpga_dma_buf*) ;
 int mlx5_fpga_tls_flow_to_cmd (void*,void*) ;
 int mlx_tls_kfree_complete ;
 int ntohl (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int swid ;
 int tcp_sn ;
 int tls_cmd ;
 int tls_rcd_sn ;
 scalar_t__ unlikely (int) ;

int mlx5_fpga_tls_resync_rx(struct mlx5_core_dev *mdev, u32 handle, u32 seq,
       u64 rcd_sn)
{
 struct mlx5_fpga_dma_buf *buf;
 int size = sizeof(*buf) + MLX5_TLS_COMMAND_SIZE;
 void *flow;
 void *cmd;
 int ret;

 buf = kzalloc(size, GFP_ATOMIC);
 if (!buf)
  return -ENOMEM;

 cmd = (buf + 1);

 rcu_read_lock();
 flow = idr_find(&mdev->fpga->tls->rx_idr, ntohl(handle));
 if (unlikely(!flow)) {
  rcu_read_unlock();
  WARN_ONCE(1, "Received NULL pointer for handle\n");
  kfree(buf);
  return -EINVAL;
 }
 mlx5_fpga_tls_flow_to_cmd(flow, cmd);
 rcu_read_unlock();

 MLX5_SET(tls_cmd, cmd, swid, ntohl(handle));
 MLX5_SET64(tls_cmd, cmd, tls_rcd_sn, be64_to_cpu(rcd_sn));
 MLX5_SET(tls_cmd, cmd, tcp_sn, seq);
 MLX5_SET(tls_cmd, cmd, command_type, CMD_RESYNC_RX);

 buf->sg[0].data = cmd;
 buf->sg[0].size = MLX5_TLS_COMMAND_SIZE;
 buf->complete = mlx_tls_kfree_complete;

 ret = mlx5_fpga_sbu_conn_sendmsg(mdev->fpga->tls->conn, buf);
 if (ret < 0)
  kfree(buf);

 return ret;
}
