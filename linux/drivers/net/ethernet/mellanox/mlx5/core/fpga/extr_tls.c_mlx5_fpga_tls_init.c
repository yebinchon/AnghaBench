
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_tls {int caps; int rx_idr_spinlock; int tx_idr_spinlock; int rx_idr; int tx_idr; int pending_cmds; int pending_cmds_lock; struct mlx5_fpga_conn* conn; } ;
struct mlx5_fpga_device {struct mlx5_fpga_tls* tls; } ;
struct mlx5_fpga_conn_attr {struct mlx5_fpga_device* cb_arg; int recv_cb; void* tx_size; void* rx_size; int member_0; } ;
struct mlx5_fpga_conn {int dummy; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;


 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct mlx5_fpga_conn*) ;
 int MLX5_ACCEL_TLS_AES_GCM128 ;
 int MLX5_ACCEL_TLS_V12 ;
 int PTR_ERR (struct mlx5_fpga_conn*) ;
 void* SBU_QP_QUEUE_SIZE ;
 int idr_init (int *) ;
 int kfree (struct mlx5_fpga_tls*) ;
 struct mlx5_fpga_tls* kzalloc (int,int ) ;
 int mlx5_fpga_err (struct mlx5_fpga_device*,char*,int) ;
 int mlx5_fpga_is_tls_device (struct mlx5_core_dev*) ;
 struct mlx5_fpga_conn* mlx5_fpga_sbu_conn_create (struct mlx5_fpga_device*,struct mlx5_fpga_conn_attr*) ;
 int mlx5_fpga_tls_get_caps (struct mlx5_fpga_device*,int*) ;
 int mlx5_fpga_tls_hw_qp_recv_cb ;
 int spin_lock_init (int *) ;

int mlx5_fpga_tls_init(struct mlx5_core_dev *mdev)
{
 struct mlx5_fpga_device *fdev = mdev->fpga;
 struct mlx5_fpga_conn_attr init_attr = {0};
 struct mlx5_fpga_conn *conn;
 struct mlx5_fpga_tls *tls;
 int err = 0;

 if (!mlx5_fpga_is_tls_device(mdev) || !fdev)
  return 0;

 tls = kzalloc(sizeof(*tls), GFP_KERNEL);
 if (!tls)
  return -ENOMEM;

 err = mlx5_fpga_tls_get_caps(fdev, &tls->caps);
 if (err)
  goto error;

 if (!(tls->caps & (MLX5_ACCEL_TLS_V12 | MLX5_ACCEL_TLS_AES_GCM128))) {
  err = -ENOTSUPP;
  goto error;
 }

 init_attr.rx_size = SBU_QP_QUEUE_SIZE;
 init_attr.tx_size = SBU_QP_QUEUE_SIZE;
 init_attr.recv_cb = mlx5_fpga_tls_hw_qp_recv_cb;
 init_attr.cb_arg = fdev;
 conn = mlx5_fpga_sbu_conn_create(fdev, &init_attr);
 if (IS_ERR(conn)) {
  err = PTR_ERR(conn);
  mlx5_fpga_err(fdev, "Error creating TLS command connection %d\n",
         err);
  goto error;
 }

 tls->conn = conn;
 spin_lock_init(&tls->pending_cmds_lock);
 INIT_LIST_HEAD(&tls->pending_cmds);

 idr_init(&tls->tx_idr);
 idr_init(&tls->rx_idr);
 spin_lock_init(&tls->tx_idr_spinlock);
 spin_lock_init(&tls->rx_idr_spinlock);
 fdev->tls = tls;
 return 0;

error:
 kfree(tls);
 return err;
}
