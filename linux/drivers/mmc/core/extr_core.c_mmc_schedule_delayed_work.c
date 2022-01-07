
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delayed_work {int dummy; } ;


 int queue_delayed_work (int ,struct delayed_work*,unsigned long) ;
 int system_freezable_wq ;

__attribute__((used)) static int mmc_schedule_delayed_work(struct delayed_work *work,
         unsigned long delay)
{






 return queue_delayed_work(system_freezable_wq, work, delay);
}
