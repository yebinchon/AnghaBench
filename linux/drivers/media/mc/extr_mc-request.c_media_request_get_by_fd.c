
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct media_request {struct media_device* mdev; } ;
struct media_device {int dev; TYPE_2__* ops; } ;
struct fd {TYPE_1__* file; } ;
struct TYPE_4__ {int req_queue; int req_validate; } ;
struct TYPE_3__ {struct media_request* private_data; int * f_op; } ;


 int EBADR ;
 int EINVAL ;
 struct media_request* ERR_PTR (int ) ;
 int dev_dbg (int ,char*,int) ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int media_request_get (struct media_request*) ;
 int request_fops ;

struct media_request *
media_request_get_by_fd(struct media_device *mdev, int request_fd)
{
 struct fd f;
 struct media_request *req;

 if (!mdev || !mdev->ops ||
     !mdev->ops->req_validate || !mdev->ops->req_queue)
  return ERR_PTR(-EBADR);

 f = fdget(request_fd);
 if (!f.file)
  goto err_no_req_fd;

 if (f.file->f_op != &request_fops)
  goto err_fput;
 req = f.file->private_data;
 if (req->mdev != mdev)
  goto err_fput;
 media_request_get(req);
 fdput(f);

 return req;

err_fput:
 fdput(f);

err_no_req_fd:
 dev_dbg(mdev->dev, "cannot find request_fd %d\n", request_fd);
 return ERR_PTR(-EINVAL);
}
