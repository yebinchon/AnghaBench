
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct media_request {int debug_str; scalar_t__ access_count; scalar_t__ updating_count; int poll_wait; int lock; int objects; int kref; scalar_t__ num_incomplete_objects; int state; struct media_device* mdev; } ;
struct media_device {int dev; int request_id; TYPE_1__* ops; } ;
struct file {struct media_request* private_data; } ;
struct TYPE_2__ {struct media_request* (* req_alloc ) (struct media_device*) ;int req_free; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct file*) ;
 int MEDIA_REQUEST_STATE_IDLE ;
 int O_CLOEXEC ;
 int PTR_ERR (struct file*) ;
 scalar_t__ WARN_ON (int) ;
 struct file* anon_inode_getfile (char*,int *,int *,int ) ;
 int atomic_inc_return (int *) ;
 int dev_dbg (int ,char*,int ) ;
 int fd_install (int,struct file*) ;
 int fput (struct file*) ;
 int get_unused_fd_flags (int ) ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;
 struct media_request* kzalloc (int,int ) ;
 int put_unused_fd (int) ;
 int request_fops ;
 int snprintf (int ,int,char*,int,int) ;
 int spin_lock_init (int *) ;
 struct media_request* stub1 (struct media_device*) ;

int media_request_alloc(struct media_device *mdev, int *alloc_fd)
{
 struct media_request *req;
 struct file *filp;
 int fd;
 int ret;


 if (WARN_ON(!mdev->ops->req_alloc ^ !mdev->ops->req_free))
  return -ENOMEM;

 fd = get_unused_fd_flags(O_CLOEXEC);
 if (fd < 0)
  return fd;

 filp = anon_inode_getfile("request", &request_fops, ((void*)0), O_CLOEXEC);
 if (IS_ERR(filp)) {
  ret = PTR_ERR(filp);
  goto err_put_fd;
 }

 if (mdev->ops->req_alloc)
  req = mdev->ops->req_alloc(mdev);
 else
  req = kzalloc(sizeof(*req), GFP_KERNEL);
 if (!req) {
  ret = -ENOMEM;
  goto err_fput;
 }

 filp->private_data = req;
 req->mdev = mdev;
 req->state = MEDIA_REQUEST_STATE_IDLE;
 req->num_incomplete_objects = 0;
 kref_init(&req->kref);
 INIT_LIST_HEAD(&req->objects);
 spin_lock_init(&req->lock);
 init_waitqueue_head(&req->poll_wait);
 req->updating_count = 0;
 req->access_count = 0;

 *alloc_fd = fd;

 snprintf(req->debug_str, sizeof(req->debug_str), "%u:%d",
   atomic_inc_return(&mdev->request_id), fd);
 dev_dbg(mdev->dev, "request: allocated %s\n", req->debug_str);

 fd_install(fd, filp);

 return 0;

err_fput:
 fput(filp);

err_put_fd:
 put_unused_fd(fd);

 return ret;
}
