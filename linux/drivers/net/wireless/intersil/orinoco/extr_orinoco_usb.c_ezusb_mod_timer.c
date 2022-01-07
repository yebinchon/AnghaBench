
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ezusb_priv {int udev; } ;


 int mod_timer (struct timer_list*,unsigned long) ;

__attribute__((used)) static inline void ezusb_mod_timer(struct ezusb_priv *upriv,
       struct timer_list *timer,
       unsigned long expire)
{
 if (!upriv->udev)
  return;
 mod_timer(timer, expire);
}
