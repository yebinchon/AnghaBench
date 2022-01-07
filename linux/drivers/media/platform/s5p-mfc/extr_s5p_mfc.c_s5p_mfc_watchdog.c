
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct s5p_mfc_dev {TYPE_1__ watchdog_timer; int watchdog_work; int watchdog_cnt; int hw_lock; } ;


 scalar_t__ MFC_WATCHDOG_CNT ;
 int MFC_WATCHDOG_INTERVAL ;
 int add_timer (TYPE_1__*) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 struct s5p_mfc_dev* dev ;
 struct s5p_mfc_dev* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mfc_err (char*) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int schedule_work (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int watchdog_timer ;

__attribute__((used)) static void s5p_mfc_watchdog(struct timer_list *t)
{
 struct s5p_mfc_dev *dev = from_timer(dev, t, watchdog_timer);

 if (test_bit(0, &dev->hw_lock))
  atomic_inc(&dev->watchdog_cnt);
 if (atomic_read(&dev->watchdog_cnt) >= MFC_WATCHDOG_CNT) {





  mfc_err("Time out during waiting for HW\n");
  schedule_work(&dev->watchdog_work);
 }
 dev->watchdog_timer.expires = jiffies +
     msecs_to_jiffies(MFC_WATCHDOG_INTERVAL);
 add_timer(&dev->watchdog_timer);
}
