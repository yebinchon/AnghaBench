
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int device_lock; } ;
struct mei_cl_cb {int dummy; } ;
struct mei_cl {scalar_t__ state; int status; int wait; struct mei_device* dev; } ;


 int ENOMEM ;
 int ETIME ;
 int MEI_CL_CONNECT_TIMEOUT ;
 scalar_t__ MEI_FILE_DISCONNECTED ;
 scalar_t__ MEI_FILE_DISCONNECTING ;
 scalar_t__ MEI_FILE_DISCONNECT_REPLY ;
 int MEI_FOP_DISCONNECT ;
 int cl_dbg (struct mei_device*,struct mei_cl*,char*) ;
 int cl_err (struct mei_device*,struct mei_cl*,char*) ;
 struct mei_cl_cb* mei_cl_enqueue_ctrl_wr_cb (struct mei_cl*,int ,int ,int *) ;
 int mei_cl_send_disconnect (struct mei_cl*,struct mei_cl_cb*) ;
 int mei_cl_set_disconnected (struct mei_cl*) ;
 scalar_t__ mei_hbuf_acquire (struct mei_device*) ;
 int mei_io_cb_free (struct mei_cl_cb*) ;
 int mei_secs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int __mei_cl_disconnect(struct mei_cl *cl)
{
 struct mei_device *dev;
 struct mei_cl_cb *cb;
 int rets;

 dev = cl->dev;

 cl->state = MEI_FILE_DISCONNECTING;

 cb = mei_cl_enqueue_ctrl_wr_cb(cl, 0, MEI_FOP_DISCONNECT, ((void*)0));
 if (!cb) {
  rets = -ENOMEM;
  goto out;
 }

 if (mei_hbuf_acquire(dev)) {
  rets = mei_cl_send_disconnect(cl, cb);
  if (rets) {
   cl_err(dev, cl, "failed to disconnect.\n");
   goto out;
  }
 }

 mutex_unlock(&dev->device_lock);
 wait_event_timeout(cl->wait,
      cl->state == MEI_FILE_DISCONNECT_REPLY ||
      cl->state == MEI_FILE_DISCONNECTED,
      mei_secs_to_jiffies(MEI_CL_CONNECT_TIMEOUT));
 mutex_lock(&dev->device_lock);

 rets = cl->status;
 if (cl->state != MEI_FILE_DISCONNECT_REPLY &&
     cl->state != MEI_FILE_DISCONNECTED) {
  cl_dbg(dev, cl, "timeout on disconnect from FW client.\n");
  rets = -ETIME;
 }

out:

 mei_cl_set_disconnected(cl);
 if (!rets)
  cl_dbg(dev, cl, "successfully disconnected from FW client.\n");

 mei_io_cb_free(cb);
 return rets;
}
