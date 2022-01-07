
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {TYPE_1__* raw; } ;
struct imon_dec {int stick_keyboard; } ;
struct TYPE_2__ {struct imon_dec imon; } ;



__attribute__((used)) static int ir_imon_register(struct rc_dev *dev)
{
 struct imon_dec *imon = &dev->raw->imon;

 imon->stick_keyboard = 0;

 return 0;
}
