
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_port_cap {int dummy; } ;
struct mlx4_dev {int dummy; } ;


 int mlx4_QUERY_PORT (struct mlx4_dev*,int,struct mlx4_port_cap*) ;
 int mlx4_err (struct mlx4_dev*,char*) ;

__attribute__((used)) static int mlx4_dev_port(struct mlx4_dev *dev, int port,
    struct mlx4_port_cap *port_cap)
{
 int err = 0;

 err = mlx4_QUERY_PORT(dev, port, port_cap);

 if (err)
  mlx4_err(dev, "QUERY_PORT command failed.\n");

 return err;
}
