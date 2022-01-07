
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_rc {int polling; int work; } ;
struct au0828_dev {struct au0828_rc* ir; } ;


 int au8522_rc_set (struct au0828_rc*,int,int) ;
 int msecs_to_jiffies (int ) ;
 int pr_info (char*) ;
 int schedule_delayed_work (int *,int ) ;

int au0828_rc_resume(struct au0828_dev *dev)
{
 struct au0828_rc *ir = dev->ir;

 if (!ir)
  return 0;

 pr_info("Restarting RC\n");


 au8522_rc_set(ir, 0xe0, 1 << 4);

 schedule_delayed_work(&ir->work, msecs_to_jiffies(ir->polling));

 return 0;
}
