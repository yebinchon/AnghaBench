
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dev; } ;
struct mei_cl_cb {int list; } ;
struct mei_cl {scalar_t__ rx_flow_ctrl_creds; int rd_pending; int me_cl; struct mei_device* dev; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int ENODEV ;
 int ENOMEM ;
 int ENOTTY ;
 int MEI_FOP_READ ;
 scalar_t__ WARN_ON (int) ;
 int cl_dbg (struct mei_device*,struct mei_cl*,char*) ;
 int cl_err (struct mei_device*,struct mei_cl*,char*,...) ;
 int list_move_tail (int *,int *) ;
 struct mei_cl_cb* mei_cl_enqueue_ctrl_wr_cb (struct mei_cl*,size_t,int ,struct file const*) ;
 int mei_cl_is_connected (struct mei_cl*) ;
 scalar_t__ mei_cl_is_fixed_address (struct mei_cl*) ;
 int mei_hbm_cl_flow_control_req (struct mei_device*,struct mei_cl*) ;
 scalar_t__ mei_hbuf_acquire (struct mei_device*) ;
 int mei_io_cb_free (struct mei_cl_cb*) ;
 int mei_me_cl_is_active (int ) ;
 int pm_runtime_get (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;

int mei_cl_read_start(struct mei_cl *cl, size_t length, const struct file *fp)
{
 struct mei_device *dev;
 struct mei_cl_cb *cb;
 int rets;

 if (WARN_ON(!cl || !cl->dev))
  return -ENODEV;

 dev = cl->dev;

 if (!mei_cl_is_connected(cl))
  return -ENODEV;

 if (!mei_me_cl_is_active(cl->me_cl)) {
  cl_err(dev, cl, "no such me client\n");
  return -ENOTTY;
 }

 if (mei_cl_is_fixed_address(cl))
  return 0;


 if (cl->rx_flow_ctrl_creds)
  return -EBUSY;

 cb = mei_cl_enqueue_ctrl_wr_cb(cl, length, MEI_FOP_READ, fp);
 if (!cb)
  return -ENOMEM;

 rets = pm_runtime_get(dev->dev);
 if (rets < 0 && rets != -EINPROGRESS) {
  pm_runtime_put_noidle(dev->dev);
  cl_err(dev, cl, "rpm: get failed %d\n", rets);
  goto nortpm;
 }

 rets = 0;
 if (mei_hbuf_acquire(dev)) {
  rets = mei_hbm_cl_flow_control_req(dev, cl);
  if (rets < 0)
   goto out;

  list_move_tail(&cb->list, &cl->rd_pending);
 }
 cl->rx_flow_ctrl_creds++;

out:
 cl_dbg(dev, cl, "rpm: autosuspend\n");
 pm_runtime_mark_last_busy(dev->dev);
 pm_runtime_put_autosuspend(dev->dev);
nortpm:
 if (rets)
  mei_io_cb_free(cb);

 return rets;
}
