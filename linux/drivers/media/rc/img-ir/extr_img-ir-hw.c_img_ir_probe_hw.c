
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rc_dev {char* device_name; int change_protocol; int s_wakeup_filter; int s_filter; int allowed_protocols; int map_name; struct img_ir_priv* priv; } ;
struct TYPE_3__ {int notifier_call; } ;
struct img_ir_priv_hw {int clk_hz; TYPE_1__ clk_nb; struct rc_dev* rdev; int suspend_timer; int end_timer; } ;
struct img_ir_priv {int clk; int dev; struct img_ir_priv_hw hw; } ;


 int ENOMEM ;
 int IS_ERR (int ) ;
 int RC_DRIVER_SCANCODE ;
 int RC_MAP_EMPTY ;
 int clk_get_rate (int ) ;
 int clk_notifier_register (int ,TYPE_1__*) ;
 int clk_notifier_unregister (int ,TYPE_1__*) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int device_init_wakeup (int ,int) ;
 int img_ir_allowed_protos (struct img_ir_priv*) ;
 int img_ir_change_protocol ;
 int img_ir_clk_notify ;
 int img_ir_end_timer ;
 int img_ir_init_decoders () ;
 int img_ir_probe_hw_caps (struct img_ir_priv*) ;
 int img_ir_set_decoder (struct img_ir_priv*,int *,int ) ;
 int img_ir_set_normal_filter ;
 int img_ir_set_wakeup_filter ;
 int img_ir_suspend_timer ;
 struct rc_dev* rc_allocate_device (int ) ;
 int rc_free_device (struct rc_dev*) ;
 int rc_register_device (struct rc_dev*) ;
 int timer_setup (int *,int ,int ) ;

int img_ir_probe_hw(struct img_ir_priv *priv)
{
 struct img_ir_priv_hw *hw = &priv->hw;
 struct rc_dev *rdev;
 int error;


 img_ir_init_decoders();


 img_ir_probe_hw_caps(priv);


 timer_setup(&hw->end_timer, img_ir_end_timer, 0);
 timer_setup(&hw->suspend_timer, img_ir_suspend_timer, 0);


 if (!IS_ERR(priv->clk)) {
  hw->clk_hz = clk_get_rate(priv->clk);







 } else {
  hw->clk_hz = 32768;
 }


 hw->rdev = rdev = rc_allocate_device(RC_DRIVER_SCANCODE);
 if (!rdev) {
  dev_err(priv->dev, "cannot allocate input device\n");
  error = -ENOMEM;
  goto err_alloc_rc;
 }
 rdev->priv = priv;
 rdev->map_name = RC_MAP_EMPTY;
 rdev->allowed_protocols = img_ir_allowed_protos(priv);
 rdev->device_name = "IMG Infrared Decoder";
 rdev->s_filter = img_ir_set_normal_filter;
 rdev->s_wakeup_filter = img_ir_set_wakeup_filter;


 error = rc_register_device(rdev);
 if (error) {
  dev_err(priv->dev, "failed to register IR input device\n");
  goto err_register_rc;
 }





 rdev->change_protocol = img_ir_change_protocol;

 device_init_wakeup(priv->dev, 1);

 return 0;

err_register_rc:
 img_ir_set_decoder(priv, ((void*)0), 0);
 hw->rdev = ((void*)0);
 rc_free_device(rdev);
err_alloc_rc:




 return error;
}
