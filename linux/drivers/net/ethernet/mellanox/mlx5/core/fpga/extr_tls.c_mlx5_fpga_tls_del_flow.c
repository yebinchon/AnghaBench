
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_fpga_tls {int rx_idr_spinlock; int rx_idr; int tx_idr_spinlock; int tx_idr; } ;
struct mlx5_core_dev {TYPE_1__* fpga; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct mlx5_fpga_tls* tls; } ;


 int mlx5_fpga_err (TYPE_1__*,char*,int ) ;
 void* mlx5_fpga_tls_release_swid (int *,int *,int ) ;
 int mlx5_fpga_tls_send_teardown_cmd (struct mlx5_core_dev*,void*,int ,int ) ;
 int synchronize_rcu () ;

void mlx5_fpga_tls_del_flow(struct mlx5_core_dev *mdev, u32 swid,
       gfp_t flags, bool direction_sx)
{
 struct mlx5_fpga_tls *tls = mdev->fpga->tls;
 void *flow;

 if (direction_sx)
  flow = mlx5_fpga_tls_release_swid(&tls->tx_idr,
        &tls->tx_idr_spinlock,
        swid);
 else
  flow = mlx5_fpga_tls_release_swid(&tls->rx_idr,
        &tls->rx_idr_spinlock,
        swid);

 if (!flow) {
  mlx5_fpga_err(mdev->fpga, "No flow information for swid %u\n",
         swid);
  return;
 }

 synchronize_rcu();
 mlx5_fpga_tls_send_teardown_cmd(mdev, flow, swid, flags);
}
