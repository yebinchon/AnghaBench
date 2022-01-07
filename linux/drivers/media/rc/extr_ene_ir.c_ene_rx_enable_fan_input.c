
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_device {int hw_fan_input; } ;


 int ENE_FAN_AS_IN1 ;
 int ENE_FAN_AS_IN1_EN ;
 int ENE_FAN_AS_IN2 ;
 int ENE_FAN_AS_IN2_EN ;
 int ene_write_reg (struct ene_device*,int ,int ) ;

__attribute__((used)) static void ene_rx_enable_fan_input(struct ene_device *dev, bool enable)
{
 if (!dev->hw_fan_input)
  return;

 if (!enable)
  ene_write_reg(dev, ENE_FAN_AS_IN1, 0);
 else {
  ene_write_reg(dev, ENE_FAN_AS_IN1, ENE_FAN_AS_IN1_EN);
  ene_write_reg(dev, ENE_FAN_AS_IN2, ENE_FAN_AS_IN2_EN);
 }
}
