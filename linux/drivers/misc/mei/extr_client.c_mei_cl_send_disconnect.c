
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int ctrl_rd_list; } ;
struct mei_cl_cb {int list; } ;
struct mei_cl {int status; int timer_count; int state; struct mei_device* dev; } ;


 int MEI_CONNECT_TIMEOUT ;
 int MEI_FILE_DISCONNECT_REPLY ;
 int list_move_tail (int *,int *) ;
 int mei_hbm_cl_disconnect_req (struct mei_device*,struct mei_cl*) ;
 int mei_schedule_stall_timer (struct mei_device*) ;

__attribute__((used)) static int mei_cl_send_disconnect(struct mei_cl *cl, struct mei_cl_cb *cb)
{
 struct mei_device *dev;
 int ret;

 dev = cl->dev;

 ret = mei_hbm_cl_disconnect_req(dev, cl);
 cl->status = ret;
 if (ret) {
  cl->state = MEI_FILE_DISCONNECT_REPLY;
  return ret;
 }

 list_move_tail(&cb->list, &dev->ctrl_rd_list);
 cl->timer_count = MEI_CONNECT_TIMEOUT;
 mei_schedule_stall_timer(dev);

 return 0;
}
