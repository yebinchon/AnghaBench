
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {TYPE_1__* raw; } ;
struct mce_kbd_dec {int keylock; int rx_timeout; } ;
struct TYPE_2__ {struct mce_kbd_dec mce_kbd; } ;


 int mce_kbd_rx_timeout ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ir_mce_kbd_register(struct rc_dev *dev)
{
 struct mce_kbd_dec *mce_kbd = &dev->raw->mce_kbd;

 timer_setup(&mce_kbd->rx_timeout, mce_kbd_rx_timeout, 0);
 spin_lock_init(&mce_kbd->keylock);

 return 0;
}
