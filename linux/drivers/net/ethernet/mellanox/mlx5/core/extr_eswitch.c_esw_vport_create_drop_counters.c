
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * drop_counter; } ;
struct TYPE_4__ {int * drop_counter; } ;
struct mlx5_vport {TYPE_1__ egress; int vport; TYPE_2__ ingress; struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ IS_ERR (int *) ;
 scalar_t__ MLX5_CAP_ESW_EGRESS_ACL (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_ESW_INGRESS_ACL (struct mlx5_core_dev*,int ) ;
 int esw_warn (struct mlx5_core_dev*,char*,int ) ;
 int flow_counter ;
 void* mlx5_fc_create (struct mlx5_core_dev*,int) ;

__attribute__((used)) static void esw_vport_create_drop_counters(struct mlx5_vport *vport)
{
 struct mlx5_core_dev *dev = vport->dev;

 if (MLX5_CAP_ESW_INGRESS_ACL(dev, flow_counter)) {
  vport->ingress.drop_counter = mlx5_fc_create(dev, 0);
  if (IS_ERR(vport->ingress.drop_counter)) {
   esw_warn(dev,
     "vport[%d] configure ingress drop rule counter failed\n",
     vport->vport);
   vport->ingress.drop_counter = ((void*)0);
  }
 }

 if (MLX5_CAP_ESW_EGRESS_ACL(dev, flow_counter)) {
  vport->egress.drop_counter = mlx5_fc_create(dev, 0);
  if (IS_ERR(vport->egress.drop_counter)) {
   esw_warn(dev,
     "vport[%d] configure egress drop rule counter failed\n",
     vport->vport);
   vport->egress.drop_counter = ((void*)0);
  }
 }
}
