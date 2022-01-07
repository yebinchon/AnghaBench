
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct ir_rx51* priv; } ;
struct ir_rx51 {int dev; int pwm; int device_is_open; } ;


 int EBUSY ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*,int) ;
 int pwm_get (int ,int *) ;
 scalar_t__ test_and_set_bit (int,int *) ;

__attribute__((used)) static int ir_rx51_open(struct rc_dev *dev)
{
 struct ir_rx51 *ir_rx51 = dev->priv;

 if (test_and_set_bit(1, &ir_rx51->device_is_open))
  return -EBUSY;

 ir_rx51->pwm = pwm_get(ir_rx51->dev, ((void*)0));
 if (IS_ERR(ir_rx51->pwm)) {
  int res = PTR_ERR(ir_rx51->pwm);

  dev_err(ir_rx51->dev, "pwm_get failed: %d\n", res);
  return res;
 }

 return 0;
}
