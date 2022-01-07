
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct au0828_rc* priv; } ;
struct au0828_rc {int polling; int work; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int au0828_rc_work ;
 int au8522_rc_set (struct au0828_rc*,int,int) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int au0828_rc_start(struct rc_dev *rc)
{
 struct au0828_rc *ir = rc->priv;

 INIT_DELAYED_WORK(&ir->work, au0828_rc_work);


 au8522_rc_set(ir, 0xe0, 1 << 4);

 schedule_delayed_work(&ir->work, msecs_to_jiffies(ir->polling));

 return 0;
}
