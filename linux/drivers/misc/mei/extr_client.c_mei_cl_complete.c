
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dev; } ;
struct mei_cl_cb {int fop_type; int list; } ;
struct mei_cl {int wait; int rx_wait; int rx_flow_ctrl_creds; int rd_completed; int tx_wait; int writing_state; struct mei_device* dev; } ;


 int BUG_ON (int ) ;







 int MEI_WRITE_COMPLETE ;
 int WARN_ON (int) ;
 int list_add_tail (int *,int *) ;
 int mei_cl_bus_rx_event (struct mei_cl*) ;
 int mei_cl_is_fixed_address (struct mei_cl*) ;
 int mei_cl_set_disconnected (struct mei_cl*) ;
 int mei_io_cb_free (struct mei_cl_cb*) ;
 int mei_tx_cb_dequeue (struct mei_cl_cb*) ;
 int pm_request_autosuspend (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int waitqueue_active (int *) ;
 int wake_up (int *) ;
 int wake_up_interruptible (int *) ;

void mei_cl_complete(struct mei_cl *cl, struct mei_cl_cb *cb)
{
 struct mei_device *dev = cl->dev;

 switch (cb->fop_type) {
 case 128:
  mei_tx_cb_dequeue(cb);
  cl->writing_state = MEI_WRITE_COMPLETE;
  if (waitqueue_active(&cl->tx_wait)) {
   wake_up_interruptible(&cl->tx_wait);
  } else {
   pm_runtime_mark_last_busy(dev->dev);
   pm_request_autosuspend(dev->dev);
  }
  break;

 case 129:
  list_add_tail(&cb->list, &cl->rd_completed);
  if (!mei_cl_is_fixed_address(cl) &&
      !WARN_ON(!cl->rx_flow_ctrl_creds))
   cl->rx_flow_ctrl_creds--;
  if (!mei_cl_bus_rx_event(cl))
   wake_up_interruptible(&cl->rx_wait);
  break;

 case 134:
 case 133:
 case 130:
 case 131:
  if (waitqueue_active(&cl->wait))
   wake_up(&cl->wait);

  break;
 case 132:
  mei_io_cb_free(cb);
  mei_cl_set_disconnected(cl);
  break;
 default:
  BUG_ON(0);
 }
}
