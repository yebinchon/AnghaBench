
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct media_request_object {TYPE_1__* ops; int completed; struct media_request* req; int list; } ;
struct media_request {scalar_t__ state; int lock; int poll_wait; int num_incomplete_objects; } ;
struct TYPE_2__ {int (* unbind ) (struct media_request_object*) ;} ;


 scalar_t__ MEDIA_REQUEST_STATE_CLEANING ;
 scalar_t__ MEDIA_REQUEST_STATE_COMPLETE ;
 scalar_t__ MEDIA_REQUEST_STATE_QUEUED ;
 scalar_t__ MEDIA_REQUEST_STATE_VALIDATING ;
 scalar_t__ WARN_ON (int) ;
 int list_del (int *) ;
 int media_request_put (struct media_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct media_request_object*) ;
 int wake_up_interruptible_all (int *) ;

void media_request_object_unbind(struct media_request_object *obj)
{
 struct media_request *req = obj->req;
 unsigned long flags;
 bool completed = 0;

 if (WARN_ON(!req))
  return;

 spin_lock_irqsave(&req->lock, flags);
 list_del(&obj->list);
 obj->req = ((void*)0);

 if (req->state == MEDIA_REQUEST_STATE_COMPLETE)
  goto unlock;

 if (WARN_ON(req->state == MEDIA_REQUEST_STATE_VALIDATING))
  goto unlock;

 if (req->state == MEDIA_REQUEST_STATE_CLEANING) {
  if (!obj->completed)
   req->num_incomplete_objects--;
  goto unlock;
 }

 if (WARN_ON(!req->num_incomplete_objects))
  goto unlock;

 req->num_incomplete_objects--;
 if (req->state == MEDIA_REQUEST_STATE_QUEUED &&
     !req->num_incomplete_objects) {
  req->state = MEDIA_REQUEST_STATE_COMPLETE;
  completed = 1;
  wake_up_interruptible_all(&req->poll_wait);
 }

unlock:
 spin_unlock_irqrestore(&req->lock, flags);
 if (obj->ops->unbind)
  obj->ops->unbind(obj);
 if (completed)
  media_request_put(req);
}
