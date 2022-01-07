
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int error; } ;
struct TYPE_4__ {TYPE_2__* ctrl_handler; } ;
struct sta2x11_vip {TYPE_2__ ctrl_hdl; TYPE_1__ v4l2_dev; } ;


 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int ) ;

__attribute__((used)) static int sta2x11_vip_init_controls(struct sta2x11_vip *vip)
{




 v4l2_ctrl_handler_init(&vip->ctrl_hdl, 0);

 vip->v4l2_dev.ctrl_handler = &vip->ctrl_hdl;
 if (vip->ctrl_hdl.error) {
  int err = vip->ctrl_hdl.error;

  v4l2_ctrl_handler_free(&vip->ctrl_hdl);
  return err;
 }

 return 0;
}
