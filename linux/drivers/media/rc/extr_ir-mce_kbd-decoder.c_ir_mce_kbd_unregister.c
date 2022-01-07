
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {TYPE_1__* raw; } ;
struct mce_kbd_dec {int rx_timeout; } ;
struct TYPE_2__ {struct mce_kbd_dec mce_kbd; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static int ir_mce_kbd_unregister(struct rc_dev *dev)
{
 struct mce_kbd_dec *mce_kbd = &dev->raw->mce_kbd;

 del_timer_sync(&mce_kbd->rx_timeout);

 return 0;
}
