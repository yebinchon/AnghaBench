
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {struct au0828_rc* priv; } ;
struct au0828_rc {TYPE_1__* dev; int work; } ;
struct TYPE_2__ {int dev_state; } ;


 int DEV_DISCONNECTED ;
 int au8522_rc_clear (struct au0828_rc*,int,int) ;
 int cancel_delayed_work_sync (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void au0828_rc_stop(struct rc_dev *rc)
{
 struct au0828_rc *ir = rc->priv;

 cancel_delayed_work_sync(&ir->work);


 if (!test_bit(DEV_DISCONNECTED, &ir->dev->dev_state)) {

  au8522_rc_clear(ir, 0xe0, 1 << 4);
 }
}
