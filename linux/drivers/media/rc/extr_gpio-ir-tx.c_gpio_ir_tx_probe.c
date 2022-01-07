
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int s_tx_carrier; int s_tx_duty_cycle; int tx_ir; int device_name; int driver_name; struct gpio_ir* priv; } ;
struct platform_device {int dev; } ;
struct gpio_ir {int carrier; int duty_cycle; int lock; int gpio; } ;


 int DEVICE_NAME ;
 int DRIVER_NAME ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RC_DRIVER_IR_RAW_TX ;
 int dev_err (int *,char*,...) ;
 int devm_gpiod_get (int *,int *,int ) ;
 struct gpio_ir* devm_kmalloc (int *,int,int ) ;
 struct rc_dev* devm_rc_allocate_device (int *,int ) ;
 int devm_rc_register_device (int *,struct rc_dev*) ;
 int gpio_ir_tx ;
 int gpio_ir_tx_set_carrier ;
 int gpio_ir_tx_set_duty_cycle ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int gpio_ir_tx_probe(struct platform_device *pdev)
{
 struct gpio_ir *gpio_ir;
 struct rc_dev *rcdev;
 int rc;

 gpio_ir = devm_kmalloc(&pdev->dev, sizeof(*gpio_ir), GFP_KERNEL);
 if (!gpio_ir)
  return -ENOMEM;

 rcdev = devm_rc_allocate_device(&pdev->dev, RC_DRIVER_IR_RAW_TX);
 if (!rcdev)
  return -ENOMEM;

 gpio_ir->gpio = devm_gpiod_get(&pdev->dev, ((void*)0), GPIOD_OUT_LOW);
 if (IS_ERR(gpio_ir->gpio)) {
  if (PTR_ERR(gpio_ir->gpio) != -EPROBE_DEFER)
   dev_err(&pdev->dev, "Failed to get gpio (%ld)\n",
    PTR_ERR(gpio_ir->gpio));
  return PTR_ERR(gpio_ir->gpio);
 }

 rcdev->priv = gpio_ir;
 rcdev->driver_name = DRIVER_NAME;
 rcdev->device_name = DEVICE_NAME;
 rcdev->tx_ir = gpio_ir_tx;
 rcdev->s_tx_duty_cycle = gpio_ir_tx_set_duty_cycle;
 rcdev->s_tx_carrier = gpio_ir_tx_set_carrier;

 gpio_ir->carrier = 38000;
 gpio_ir->duty_cycle = 50;
 spin_lock_init(&gpio_ir->lock);

 rc = devm_rc_register_device(&pdev->dev, rcdev);
 if (rc < 0)
  dev_err(&pdev->dev, "failed to register rc device\n");

 return rc;
}
