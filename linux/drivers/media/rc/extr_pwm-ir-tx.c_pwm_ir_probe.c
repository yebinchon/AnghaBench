
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int s_tx_carrier; int s_tx_duty_cycle; int tx_ir; int device_name; int driver_name; struct pwm_ir* priv; } ;
struct pwm_ir {int carrier; int duty_cycle; int pwm; } ;
struct platform_device {int dev; } ;


 int DEVICE_NAME ;
 int DRIVER_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RC_DRIVER_IR_RAW_TX ;
 int dev_err (int *,char*) ;
 struct pwm_ir* devm_kmalloc (int *,int,int ) ;
 int devm_pwm_get (int *,int *) ;
 struct rc_dev* devm_rc_allocate_device (int *,int ) ;
 int devm_rc_register_device (int *,struct rc_dev*) ;
 int pwm_ir_set_carrier ;
 int pwm_ir_set_duty_cycle ;
 int pwm_ir_tx ;

__attribute__((used)) static int pwm_ir_probe(struct platform_device *pdev)
{
 struct pwm_ir *pwm_ir;
 struct rc_dev *rcdev;
 int rc;

 pwm_ir = devm_kmalloc(&pdev->dev, sizeof(*pwm_ir), GFP_KERNEL);
 if (!pwm_ir)
  return -ENOMEM;

 pwm_ir->pwm = devm_pwm_get(&pdev->dev, ((void*)0));
 if (IS_ERR(pwm_ir->pwm))
  return PTR_ERR(pwm_ir->pwm);

 pwm_ir->carrier = 38000;
 pwm_ir->duty_cycle = 50;

 rcdev = devm_rc_allocate_device(&pdev->dev, RC_DRIVER_IR_RAW_TX);
 if (!rcdev)
  return -ENOMEM;

 rcdev->priv = pwm_ir;
 rcdev->driver_name = DRIVER_NAME;
 rcdev->device_name = DEVICE_NAME;
 rcdev->tx_ir = pwm_ir_tx;
 rcdev->s_tx_duty_cycle = pwm_ir_set_duty_cycle;
 rcdev->s_tx_carrier = pwm_ir_set_carrier;

 rc = devm_rc_register_device(&pdev->dev, rcdev);
 if (rc < 0)
  dev_err(&pdev->dev, "failed to register rc device\n");

 return rc;
}
