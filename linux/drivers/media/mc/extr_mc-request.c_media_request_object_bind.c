
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_request_object_ops {int release; } ;
struct media_request_object {int list; void* priv; struct media_request_object_ops const* ops; struct media_request* req; } ;
struct media_request {scalar_t__ state; int lock; int num_incomplete_objects; int objects; } ;


 int EBADR ;
 int EBUSY ;
 scalar_t__ MEDIA_REQUEST_STATE_UPDATING ;
 scalar_t__ WARN_ON (int) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int media_request_object_bind(struct media_request *req,
         const struct media_request_object_ops *ops,
         void *priv, bool is_buffer,
         struct media_request_object *obj)
{
 unsigned long flags;
 int ret = -EBUSY;

 if (WARN_ON(!ops->release))
  return -EBADR;

 spin_lock_irqsave(&req->lock, flags);

 if (WARN_ON(req->state != MEDIA_REQUEST_STATE_UPDATING))
  goto unlock;

 obj->req = req;
 obj->ops = ops;
 obj->priv = priv;

 if (is_buffer)
  list_add_tail(&obj->list, &req->objects);
 else
  list_add(&obj->list, &req->objects);
 req->num_incomplete_objects++;
 ret = 0;

unlock:
 spin_unlock_irqrestore(&req->lock, flags);
 return ret;
}
