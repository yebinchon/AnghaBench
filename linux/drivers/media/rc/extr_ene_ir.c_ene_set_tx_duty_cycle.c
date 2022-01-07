
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {struct ene_device* priv; } ;
struct ene_device {int tx_duty_cycle; } ;


 int dbg (char*,int ) ;
 int ene_tx_set_carrier (struct ene_device*) ;

__attribute__((used)) static int ene_set_tx_duty_cycle(struct rc_dev *rdev, u32 duty_cycle)
{
 struct ene_device *dev = rdev->priv;
 dbg("TX: setting duty cycle to %d%%", duty_cycle);
 dev->tx_duty_cycle = duty_cycle;
 ene_tx_set_carrier(dev);
 return 0;
}
