
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_rc {int work; } ;
struct au0828_dev {struct au0828_rc* ir; } ;


 int au8522_rc_clear (struct au0828_rc*,int,int) ;
 int cancel_delayed_work_sync (int *) ;
 int pr_info (char*) ;

int au0828_rc_suspend(struct au0828_dev *dev)
{
 struct au0828_rc *ir = dev->ir;

 if (!ir)
  return 0;

 pr_info("Stopping RC\n");

 cancel_delayed_work_sync(&ir->work);


 au8522_rc_clear(ir, 0xe0, 1 << 4);

 return 0;
}
