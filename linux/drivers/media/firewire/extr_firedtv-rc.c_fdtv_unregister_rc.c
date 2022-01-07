
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firedtv {TYPE_1__* remote_ctrl_dev; int remote_ctrl_work; } ;
struct TYPE_2__ {int keycode; } ;


 int cancel_work_sync (int *) ;
 int input_unregister_device (TYPE_1__*) ;
 int kfree (int ) ;

void fdtv_unregister_rc(struct firedtv *fdtv)
{
 cancel_work_sync(&fdtv->remote_ctrl_work);
 kfree(fdtv->remote_ctrl_dev->keycode);
 input_unregister_device(fdtv->remote_ctrl_dev);
}
