
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int PVPANIC_PANICKED ;
 int pvpanic_send_event (int ) ;

__attribute__((used)) static int
pvpanic_panic_notify(struct notifier_block *nb, unsigned long code,
       void *unused)
{
 pvpanic_send_event(PVPANIC_PANICKED);
 return NOTIFY_DONE;
}
