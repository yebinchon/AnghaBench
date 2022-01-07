
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ksz_device {int mib_read; scalar_t__ mib_read_interval; int mib_read_timer; } ;


 struct ksz_device* dev ;
 struct ksz_device* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mib_read_timer ;
 int mod_timer (int *,scalar_t__) ;
 int schedule_work (int *) ;

__attribute__((used)) static void mib_monitor(struct timer_list *t)
{
 struct ksz_device *dev = from_timer(dev, t, mib_read_timer);

 mod_timer(&dev->mib_read_timer, jiffies + dev->mib_read_interval);
 schedule_work(&dev->mib_read);
}
