
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct s2io_nic {int alarm_timer; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int HZ ;
 int alarm_timer ;
 struct s2io_nic* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int s2io_handle_errors (struct net_device*) ;
 struct s2io_nic* sp ;

__attribute__((used)) static void
s2io_alarm_handle(struct timer_list *t)
{
 struct s2io_nic *sp = from_timer(sp, t, alarm_timer);
 struct net_device *dev = sp->dev;

 s2io_handle_errors(dev);
 mod_timer(&sp->alarm_timer, jiffies + HZ / 2);
}
