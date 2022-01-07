
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct media_request {scalar_t__ state; int debug_str; int lock; struct media_device* mdev; } ;
struct media_device {int dev; int req_queue_mutex; TYPE_1__* ops; } ;
typedef enum media_request_state { ____Placeholder_media_request_state } media_request_state ;
struct TYPE_2__ {int (* req_validate ) (struct media_request*) ;int (* req_queue ) (struct media_request*) ;} ;


 long EBUSY ;
 scalar_t__ MEDIA_REQUEST_STATE_IDLE ;
 scalar_t__ MEDIA_REQUEST_STATE_QUEUED ;
 int MEDIA_REQUEST_STATE_VALIDATING ;
 int dev_dbg (int ,char*,int ,...) ;
 int media_request_get (struct media_request*) ;
 int media_request_put (struct media_request*) ;
 int media_request_state_str (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct media_request*) ;
 int stub2 (struct media_request*) ;

__attribute__((used)) static long media_request_ioctl_queue(struct media_request *req)
{
 struct media_device *mdev = req->mdev;
 enum media_request_state state;
 unsigned long flags;
 int ret;

 dev_dbg(mdev->dev, "request: queue %s\n", req->debug_str);







 mutex_lock(&mdev->req_queue_mutex);

 media_request_get(req);

 spin_lock_irqsave(&req->lock, flags);
 if (req->state == MEDIA_REQUEST_STATE_IDLE)
  req->state = MEDIA_REQUEST_STATE_VALIDATING;
 state = req->state;
 spin_unlock_irqrestore(&req->lock, flags);
 if (state != MEDIA_REQUEST_STATE_VALIDATING) {
  dev_dbg(mdev->dev,
   "request: unable to queue %s, request in state %s\n",
   req->debug_str, media_request_state_str(state));
  media_request_put(req);
  mutex_unlock(&mdev->req_queue_mutex);
  return -EBUSY;
 }

 ret = mdev->ops->req_validate(req);
 spin_lock_irqsave(&req->lock, flags);
 req->state = ret ? MEDIA_REQUEST_STATE_IDLE
    : MEDIA_REQUEST_STATE_QUEUED;
 spin_unlock_irqrestore(&req->lock, flags);

 if (!ret)
  mdev->ops->req_queue(req);

 mutex_unlock(&mdev->req_queue_mutex);

 if (ret) {
  dev_dbg(mdev->dev, "request: can't queue %s (%d)\n",
   req->debug_str, ret);
  media_request_put(req);
 }

 return ret;
}
