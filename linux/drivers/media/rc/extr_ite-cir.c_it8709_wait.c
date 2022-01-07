
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ite_dev {int dummy; } ;


 scalar_t__ IT8709_IDLE ;
 int IT8709_MODE ;
 scalar_t__ it8709_rm (struct ite_dev*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void it8709_wait(struct ite_dev *dev)
{
 int i = 0;




 for (i = 0; i < 15000; i++) {
  udelay(2);
  if (it8709_rm(dev, IT8709_MODE) == IT8709_IDLE)
   break;
 }
}
