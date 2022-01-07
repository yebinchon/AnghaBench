
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cmd {int wq_name; } ;
struct mlx5_core_dev {int device; struct mlx5_cmd cmd; } ;


 char* dev_name (int ) ;
 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static void set_wqname(struct mlx5_core_dev *dev)
{
 struct mlx5_cmd *cmd = &dev->cmd;

 snprintf(cmd->wq_name, sizeof(cmd->wq_name), "mlx5_cmd_%s",
   dev_name(dev->device));
}
