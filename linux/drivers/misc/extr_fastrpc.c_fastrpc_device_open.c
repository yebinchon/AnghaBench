
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct fastrpc_user* private_data; } ;
struct fastrpc_user {int user; int mutex; int sctx; struct fastrpc_channel_ctx* cctx; int tgid; int maps; int pending; int lock; } ;
struct fastrpc_channel_ctx {int lock; int users; TYPE_1__* rpdev; } ;
struct TYPE_4__ {int tgid; } ;
struct TYPE_3__ {int dev; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_2__* current ;
 int dev_err (int *,char*) ;
 int fastrpc_channel_ctx_get (struct fastrpc_channel_ctx*) ;
 int fastrpc_session_alloc (struct fastrpc_channel_ctx*) ;
 int kfree (struct fastrpc_user*) ;
 struct fastrpc_user* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 struct fastrpc_channel_ctx* miscdev_to_cctx (struct fastrpc_user*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fastrpc_device_open(struct inode *inode, struct file *filp)
{
 struct fastrpc_channel_ctx *cctx = miscdev_to_cctx(filp->private_data);
 struct fastrpc_user *fl = ((void*)0);
 unsigned long flags;

 fl = kzalloc(sizeof(*fl), GFP_KERNEL);
 if (!fl)
  return -ENOMEM;


 fastrpc_channel_ctx_get(cctx);

 filp->private_data = fl;
 spin_lock_init(&fl->lock);
 mutex_init(&fl->mutex);
 INIT_LIST_HEAD(&fl->pending);
 INIT_LIST_HEAD(&fl->maps);
 INIT_LIST_HEAD(&fl->user);
 fl->tgid = current->tgid;
 fl->cctx = cctx;

 fl->sctx = fastrpc_session_alloc(cctx);
 if (!fl->sctx) {
  dev_err(&cctx->rpdev->dev, "No session available\n");
  mutex_destroy(&fl->mutex);
  kfree(fl);

  return -EBUSY;
 }

 spin_lock_irqsave(&cctx->lock, flags);
 list_add_tail(&fl->user, &cctx->users);
 spin_unlock_irqrestore(&cctx->lock, flags);

 return 0;
}
