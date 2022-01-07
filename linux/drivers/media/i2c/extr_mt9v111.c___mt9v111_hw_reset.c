
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9v111_dev {int reset; } ;


 int EINVAL ;
 int gpiod_set_value (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int __mt9v111_hw_reset(struct mt9v111_dev *mt9v111)
{
 if (!mt9v111->reset)
  return -EINVAL;

 gpiod_set_value(mt9v111->reset, 1);
 usleep_range(500, 1000);

 gpiod_set_value(mt9v111->reset, 0);
 usleep_range(500, 1000);

 return 0;
}
