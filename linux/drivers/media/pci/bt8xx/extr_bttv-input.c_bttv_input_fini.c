
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bttv {TYPE_1__* remote; } ;
struct TYPE_2__ {int dev; } ;


 int bttv_ir_stop (struct bttv*) ;
 int kfree (TYPE_1__*) ;
 int rc_unregister_device (int ) ;

void bttv_input_fini(struct bttv *btv)
{
 if (btv->remote == ((void*)0))
  return;

 bttv_ir_stop(btv);
 rc_unregister_device(btv->remote->dev);
 kfree(btv->remote);
 btv->remote = ((void*)0);
}
