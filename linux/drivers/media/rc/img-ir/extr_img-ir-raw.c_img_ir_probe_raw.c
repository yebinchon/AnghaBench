
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {char* device_name; int map_name; struct img_ir_priv* priv; } ;
struct img_ir_priv_raw {struct rc_dev* rdev; int timer; } ;
struct img_ir_priv {int dev; struct img_ir_priv_raw raw; } ;


 int ENOMEM ;
 int RC_DRIVER_IR_RAW ;
 int RC_MAP_EMPTY ;
 int dev_err (int ,char*) ;
 int img_ir_echo_timer ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int timer_setup (int *,int ,int ) ;

int img_ir_probe_raw(struct img_ir_priv *priv)
{
 struct img_ir_priv_raw *raw = &priv->raw;
 struct rc_dev *rdev;
 int error;


 timer_setup(&raw->timer, img_ir_echo_timer, 0);


 raw->rdev = rdev = rc_allocate_device(RC_DRIVER_IR_RAW);
 if (!rdev) {
  dev_err(priv->dev, "cannot allocate raw input device\n");
  return -ENOMEM;
 }
 rdev->priv = priv;
 rdev->map_name = RC_MAP_EMPTY;
 rdev->device_name = "IMG Infrared Decoder Raw";


 error = rc_register_device(rdev);
 if (error) {
  dev_err(priv->dev, "failed to register raw IR input device\n");
  rc_free_device(rdev);
  raw->rdev = ((void*)0);
  return error;
 }

 return 0;
}
