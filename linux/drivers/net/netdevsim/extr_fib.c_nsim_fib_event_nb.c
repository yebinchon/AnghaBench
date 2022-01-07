
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct fib_notifier_info {int dummy; } ;






 int notifier_from_errno (int) ;
 int nsim_fib_event (struct fib_notifier_info*,int) ;
 int nsim_fib_rule_event (struct fib_notifier_info*,int) ;

__attribute__((used)) static int nsim_fib_event_nb(struct notifier_block *nb, unsigned long event,
        void *ptr)
{
 struct fib_notifier_info *info = ptr;
 int err = 0;

 switch (event) {
 case 129:
 case 128:
  err = nsim_fib_rule_event(info, event == 129);
  break;

 case 131:
 case 130:
  err = nsim_fib_event(info, event == 131);
  break;
 }

 return notifier_from_errno(err);
}
