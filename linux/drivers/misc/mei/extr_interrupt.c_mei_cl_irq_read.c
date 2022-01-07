
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mei_device {int dummy; } ;
struct mei_cl_cb {int list; scalar_t__ buf_idx; } ;
struct list_head {int dummy; } ;
struct mei_cl {int status; struct list_head rd_pending; struct mei_device* dev; } ;
struct hbm_flow_control {int dummy; } ;


 int EMSGSIZE ;
 int EOVERFLOW ;
 int list_empty (struct list_head*) ;
 int list_move_tail (int *,struct list_head*) ;
 scalar_t__ mei_hbm2slots (int) ;
 int mei_hbm_cl_flow_control_req (struct mei_device*,struct mei_cl*) ;
 int mei_hbuf_empty_slots (struct mei_device*) ;

__attribute__((used)) static int mei_cl_irq_read(struct mei_cl *cl, struct mei_cl_cb *cb,
      struct list_head *cmpl_list)
{
 struct mei_device *dev = cl->dev;
 u32 msg_slots;
 int slots;
 int ret;

 if (!list_empty(&cl->rd_pending))
  return 0;

 msg_slots = mei_hbm2slots(sizeof(struct hbm_flow_control));
 slots = mei_hbuf_empty_slots(dev);
 if (slots < 0)
  return -EOVERFLOW;

 if ((u32)slots < msg_slots)
  return -EMSGSIZE;

 ret = mei_hbm_cl_flow_control_req(dev, cl);
 if (ret) {
  cl->status = ret;
  cb->buf_idx = 0;
  list_move_tail(&cb->list, cmpl_list);
  return ret;
 }

 list_move_tail(&cb->list, &cl->rd_pending);

 return 0;
}
