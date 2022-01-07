
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * spec_qps; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int kfree (int *) ;

__attribute__((used)) static void mlx4_slave_destroy_special_qp_cap(struct mlx4_dev *dev)
{
 kfree(dev->caps.spec_qps);
 dev->caps.spec_qps = ((void*)0);
}
