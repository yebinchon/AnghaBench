
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct list_head {int dummy; } ;
struct mei_device {struct list_head ctrl_rd_list; } ;
struct mei_cl_cb {int list; int fop_type; } ;
struct mei_cl {int status; struct mei_device* dev; } ;
struct hbm_client_connect_request {int dummy; } ;


 int EMSGSIZE ;
 int EOVERFLOW ;
 int list_move_tail (int *,struct list_head*) ;
 int mei_cl_notify_fop2req (int ) ;
 scalar_t__ mei_hbm2slots (int) ;
 int mei_hbm_cl_notify_req (struct mei_device*,struct mei_cl*,int) ;
 int mei_hbuf_empty_slots (struct mei_device*) ;

int mei_cl_irq_notify(struct mei_cl *cl, struct mei_cl_cb *cb,
        struct list_head *cmpl_list)
{
 struct mei_device *dev = cl->dev;
 u32 msg_slots;
 int slots;
 int ret;
 bool request;

 msg_slots = mei_hbm2slots(sizeof(struct hbm_client_connect_request));
 slots = mei_hbuf_empty_slots(dev);
 if (slots < 0)
  return -EOVERFLOW;

 if ((u32)slots < msg_slots)
  return -EMSGSIZE;

 request = mei_cl_notify_fop2req(cb->fop_type);
 ret = mei_hbm_cl_notify_req(dev, cl, request);
 if (ret) {
  cl->status = ret;
  list_move_tail(&cb->list, cmpl_list);
  return ret;
 }

 list_move_tail(&cb->list, &dev->ctrl_rd_list);
 return 0;
}
