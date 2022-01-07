
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_rc {int rc; } ;
struct au0828_dev {struct au0828_rc* ir; } ;


 int kfree (struct au0828_rc*) ;
 int rc_unregister_device (int ) ;

void au0828_rc_unregister(struct au0828_dev *dev)
{
 struct au0828_rc *ir = dev->ir;


 if (!ir)
  return;

 rc_unregister_device(ir->rc);


 kfree(ir);
 dev->ir = ((void*)0);
}
