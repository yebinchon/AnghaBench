
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fpga_device {TYPE_1__* ipsec; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;
struct TYPE_2__ {int conn; int sa_hash; int rules_rb; } ;


 int destroy_rules_rb (int *) ;
 int kfree (TYPE_1__*) ;
 int mlx5_fpga_is_ipsec_device (struct mlx5_core_dev*) ;
 int mlx5_fpga_sbu_conn_destroy (int ) ;
 int rhashtable_destroy (int *) ;

void mlx5_fpga_ipsec_cleanup(struct mlx5_core_dev *mdev)
{
 struct mlx5_fpga_device *fdev = mdev->fpga;

 if (!mlx5_fpga_is_ipsec_device(mdev))
  return;

 destroy_rules_rb(&fdev->ipsec->rules_rb);
 rhashtable_destroy(&fdev->ipsec->sa_hash);

 mlx5_fpga_sbu_conn_destroy(fdev->ipsec->conn);
 kfree(fdev->ipsec);
 fdev->ipsec = ((void*)0);
}
