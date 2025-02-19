
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_ports; int* port_type; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
typedef enum mlx4_port_type { ____Placeholder_mlx4_port_type } mlx4_port_type ;


 int mlx4_CLOSE_PORT (struct mlx4_dev*,int) ;
 int mlx4_SET_PORT (struct mlx4_dev*,int,int) ;
 int mlx4_err (struct mlx4_dev*,char*,...) ;
 int mlx4_register_device (struct mlx4_dev*) ;
 int mlx4_request_modules (struct mlx4_dev*) ;
 int mlx4_set_port_mask (struct mlx4_dev*) ;
 int mlx4_unregister_device (struct mlx4_dev*) ;

int mlx4_change_port_types(struct mlx4_dev *dev,
      enum mlx4_port_type *port_types)
{
 int err = 0;
 int change = 0;
 int port;

 for (port = 0; port < dev->caps.num_ports; port++) {


  if (port_types[port] != dev->caps.port_type[port + 1])
   change = 1;
 }
 if (change) {
  mlx4_unregister_device(dev);
  for (port = 1; port <= dev->caps.num_ports; port++) {
   mlx4_CLOSE_PORT(dev, port);
   dev->caps.port_type[port] = port_types[port - 1];
   err = mlx4_SET_PORT(dev, port, -1);
   if (err) {
    mlx4_err(dev, "Failed to set port %d, aborting\n",
      port);
    goto out;
   }
  }
  mlx4_set_port_mask(dev);
  err = mlx4_register_device(dev);
  if (err) {
   mlx4_err(dev, "Failed to register device\n");
   goto out;
  }
  mlx4_request_modules(dev);
 }

out:
 return err;
}
