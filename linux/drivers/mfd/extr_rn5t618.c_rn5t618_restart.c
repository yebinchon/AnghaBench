
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int mdelay (int) ;
 int rn5t618_trigger_poweroff_sequence (int) ;

__attribute__((used)) static int rn5t618_restart(struct notifier_block *this,
       unsigned long mode, void *cmd)
{
 rn5t618_trigger_poweroff_sequence(1);





 mdelay(1);

 return NOTIFY_DONE;
}
