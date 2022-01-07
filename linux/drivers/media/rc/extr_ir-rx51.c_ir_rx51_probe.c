
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rc_dev {int driver_name; int s_tx_carrier; int s_tx_duty_cycle; int tx_ir; int close; int open; TYPE_1__* priv; } ;
struct pwm_device {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {int function; } ;
struct TYPE_3__ {struct rc_dev* rcdev; int * dev; TYPE_2__ timer; int freq; } ;


 int CLOCK_MONOTONIC ;
 int DIV_ROUND_CLOSEST (int ,int ) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int HRTIMER_MODE_REL ;
 scalar_t__ IS_ERR (struct pwm_device*) ;
 int KBUILD_MODNAME ;
 int NSEC_PER_SEC ;
 int PTR_ERR (struct pwm_device*) ;
 int RC_DRIVER_IR_RAW_TX ;
 int dev_err (int *,char*,int) ;
 struct rc_dev* devm_rc_allocate_device (int *,int ) ;
 int devm_rc_register_device (int *,struct rc_dev*) ;
 int hrtimer_init (TYPE_2__*,int ,int ) ;
 TYPE_1__ ir_rx51 ;
 int ir_rx51_open ;
 int ir_rx51_release ;
 int ir_rx51_set_duty_cycle ;
 int ir_rx51_set_tx_carrier ;
 int ir_rx51_timer_cb ;
 int ir_rx51_tx ;
 struct pwm_device* pwm_get (int *,int *) ;
 int pwm_get_period (struct pwm_device*) ;
 int pwm_put (struct pwm_device*) ;

__attribute__((used)) static int ir_rx51_probe(struct platform_device *dev)
{
 struct pwm_device *pwm;
 struct rc_dev *rcdev;

 pwm = pwm_get(&dev->dev, ((void*)0));
 if (IS_ERR(pwm)) {
  int err = PTR_ERR(pwm);

  if (err != -EPROBE_DEFER)
   dev_err(&dev->dev, "pwm_get failed: %d\n", err);
  return err;
 }


 ir_rx51.freq = DIV_ROUND_CLOSEST(pwm_get_period(pwm), NSEC_PER_SEC);
 pwm_put(pwm);

 hrtimer_init(&ir_rx51.timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 ir_rx51.timer.function = ir_rx51_timer_cb;

 ir_rx51.dev = &dev->dev;

 rcdev = devm_rc_allocate_device(&dev->dev, RC_DRIVER_IR_RAW_TX);
 if (!rcdev)
  return -ENOMEM;

 rcdev->priv = &ir_rx51;
 rcdev->open = ir_rx51_open;
 rcdev->close = ir_rx51_release;
 rcdev->tx_ir = ir_rx51_tx;
 rcdev->s_tx_duty_cycle = ir_rx51_set_duty_cycle;
 rcdev->s_tx_carrier = ir_rx51_set_tx_carrier;
 rcdev->driver_name = KBUILD_MODNAME;

 ir_rx51.rcdev = rcdev;

 return devm_rc_register_device(&dev->dev, ir_rx51.rcdev);
}
